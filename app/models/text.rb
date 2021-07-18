class Text < ApplicationRecord
  has_one :comment, as: :content, touch: true
  has_rich_text :text_content
  delegate :author_name, to: :comment
end
