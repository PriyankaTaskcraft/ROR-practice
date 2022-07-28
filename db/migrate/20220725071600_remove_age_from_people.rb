class RemoveAgeFromPeople < ActiveRecord::Migration[6.0]
  def change
    remove_column :people, :age, :int
  end
end
