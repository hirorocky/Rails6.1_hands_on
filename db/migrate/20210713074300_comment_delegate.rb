class CommentDelegate < ActiveRecord::Migration[6.1]
  def change
    create_table :texts do |t|
      t.timestamps
    end

    create_table :emojis do |t|
      t.integer :emoji_type, null: false, default: 0
    end

    add_column :comments, :content_type, :string, null: false
    add_column :comments, :content_id, :bigint, null: false

  end
end
