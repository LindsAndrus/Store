class CreateProdOrders < ActiveRecord::Migration
  def change
    create_table :prod_orders do |t|
      t.references :order, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
