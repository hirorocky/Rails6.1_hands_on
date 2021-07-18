class Comment < ApplicationRecord
  belongs_to :community
  delegated_type :content, types: %w[Text Emoji]
end
