class RemoveContentInComment < ActiveRecord::Migration[6.1]
  def change
    remove_column :comments, :content, :text
  end
end
