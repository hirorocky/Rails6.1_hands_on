class Emoji < ApplicationRecord
  has_one :comment, as: :content, touch: true
  enum emoji_type: %i[😀 😂 😎]
  delegate :author_name, to: :comment
end
