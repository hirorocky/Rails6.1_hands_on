class Comment < ApplicationRecord
  belongs_to :community
  has_rich_text :content
end
