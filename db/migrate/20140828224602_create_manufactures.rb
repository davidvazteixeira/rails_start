class CreateManufactures < ActiveRecord::Migration
  def change
    create_table :manufactures do |t|
      t.string :name
      t.integer :gross
      t.boolean :active
      t.integer :rate

      t.timestamps
    end
  end
end
