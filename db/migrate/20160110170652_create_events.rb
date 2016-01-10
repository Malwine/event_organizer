class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.integer :venue_id

      t.timestamps null: false
    end

    add_index :events, :venue_id
  end
end
