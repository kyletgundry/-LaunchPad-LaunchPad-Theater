class AddShowtimeTheaterIdColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :showtimes, :seats_available, :integer
  end
end
