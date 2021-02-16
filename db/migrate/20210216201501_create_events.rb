class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :start_date
      t.integer :duration
      t.integer :price
      t.string :location
      t.text :description
      
      t.timestamps
    end
  end
end
