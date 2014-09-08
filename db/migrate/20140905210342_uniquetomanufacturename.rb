class Uniquetomanufacturename < ActiveRecord::Migration
  def change
		add_index(:manufactures, :name, unique: true)
		add_index(:products, :name, unique: true)
  end
end
