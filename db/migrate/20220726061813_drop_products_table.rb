class DropProductsTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :products
  end
end
