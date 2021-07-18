class Community < ApplicationRecord
  has_many :comments, strict_loading: true
  validates :title, length: { minimum: 1, maximum: 40 }
end
