class CreateCinemas < ActiveRecord::Migration[5.2]
  def change
    create_table :cinemas do |t|
      t.string :cinema_name
      t.string :cinema_location

      t.timestamps
    end
  end
end
