class Post < ApplicationRecord
  validates :link, length: { in: 5..200 }, allow_nil: true, allow_blank: true
  validates :title, length: { in: 1..90 }, presence: true
  validates :body, length: { maximum: 1000 }, presence: true

  belongs_to :user
  has_many :comments
end
