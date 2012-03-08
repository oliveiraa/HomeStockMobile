class CreateStockMovements < ActiveRecord::Migration
  def change
    create_table :stock_movements do |t|
      t.integer :stock_id
      t.string :product_id
      t.string :integer
      t.integer :quantity

      t.timestamps
    end
  end
end
