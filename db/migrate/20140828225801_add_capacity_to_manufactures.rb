class AddCapacityToManufactures < ActiveRecord::Migration
  def change
    add_column :manufactures, :capacity, :integer
  end
end
