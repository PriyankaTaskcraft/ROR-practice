class AddExpiryDateToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :expiry_date, :date
  end
end
