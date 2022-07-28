class CreatePeople < ActiveRecord::Migration[6.0]
  def up
     add_column :people, :first_name, :string, :last_name, :string

  end

  def down
     add_column :people, :first_name, :string, :last_name, :string
  end
end
