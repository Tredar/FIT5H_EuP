class AddFieldToLikes < ActiveRecord::Migration[5.0]
  def change
    add_column :likes, :description, :text
  end
end
