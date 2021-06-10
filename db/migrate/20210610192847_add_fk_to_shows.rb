class AddFkToShows < ActiveRecord::Migration[5.2]
  def change
    add_reference :shows, :cinema, foreign_key: true
    add_reference :shows, :movie, foreign_key: true
  end
end
