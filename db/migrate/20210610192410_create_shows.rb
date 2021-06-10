class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.string :show_time
      t.string :show_date
      t.integer :show_room_number

      t.timestamps
    end
  end
end
