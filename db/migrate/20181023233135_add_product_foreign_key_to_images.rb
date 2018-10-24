class AddProductForeignKeyToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :product_id, :integer
  end
end
