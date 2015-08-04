class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  validates :title, presence: true, length:  { minimum: 15 }
  validates :link, presence: true, length: { minimum: 3, maximum: 255 },
                                                         uniqueness: { case_sensitive: false }
  validates :user_id, presence: true
end
