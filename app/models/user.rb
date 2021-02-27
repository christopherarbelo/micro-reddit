class User < ApplicationRecord
  validates :username, length: { in: 3..20 }, presence: true, uniqueness: { case_sensitive: false }
  validates :email, length: { in: 4..30 }, presence: true, uniqueness: { case_sensitive: false }
  validates :password, length: { in: 5..20, too_short: "must be at least 5 characters.", too_long: "cannot be more than 20 characters." }, presence: true

  has_many :posts
  has_many :comments

  validates_associated :posts, :comments
end
