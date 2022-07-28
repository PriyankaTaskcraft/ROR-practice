class AddPasswordToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :password, :string
  end
end
