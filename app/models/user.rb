class User < ApplicationRecord
  has_many :notes
  has_many :lists
  has_many :list_items, through: :lists
  validates_uniqueness_of :username

  has_secure_password

end
