class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.text :address
      t.integer :capacity, default: 0
      t.boolean :wheelchair_accessible, default: false

      t.timestamps null: false
    end
  end
end
