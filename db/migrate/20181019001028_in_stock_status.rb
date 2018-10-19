class InStockStatus < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :stock_status, :string
  end
end
