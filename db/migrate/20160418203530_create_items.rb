class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.float :price
      t.integer :amount
      t.text :description

      t.timestamps null: false
    end
  end
end
