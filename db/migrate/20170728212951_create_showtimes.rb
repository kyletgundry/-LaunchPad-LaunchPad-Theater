class CreateShowtimes < ActiveRecord::Migration[5.0]
  def change
    create_table :showtimes do |t|
      t.integer :theater_id
      t.integer :movie_id
      t.datetime :showtime

      t.timestamps
    end
  end
end
