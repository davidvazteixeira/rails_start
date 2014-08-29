class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :engine
      t.string :tire

      #t.integer :manufacture_id
      t.references :manufacture
      
      t.timestamps
    end
  end
end
