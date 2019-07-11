class AddColumnsToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :title, :string
    add_column :blogs, :content, :text
    add_reference :blogs, :user, foreign_key: true
  end
end
