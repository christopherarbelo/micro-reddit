class Comment < ApplicationRecord
  validates :body, length: { maximum: 200 }, presence: true
  
  belongs_to :post
  belongs_to :user
end
