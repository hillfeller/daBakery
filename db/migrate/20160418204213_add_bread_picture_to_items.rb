class AddBreadPictureToItems < ActiveRecord::Migration
  def change
    add_column :items, :bread_url, :string
  end
end
