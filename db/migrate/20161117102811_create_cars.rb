class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :brand
      t.integer :year

      t.timestamps
    end
  end
end
