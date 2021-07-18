class Community < ApplicationRecord
  has_many :comments, strict_loading: true
end
