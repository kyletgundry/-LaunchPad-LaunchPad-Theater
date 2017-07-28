class ChangeShowtimeShowtimeColumnToDateAndTime < ActiveRecord::Migration[5.0]
  def change
    change_column :showtimes, :showtime, :date
    rename_column :showtimes, :showtime, :date
    add_column :showtimes, :time, :time
  end
end
