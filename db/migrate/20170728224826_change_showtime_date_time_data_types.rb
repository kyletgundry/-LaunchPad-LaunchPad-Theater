class ChangeShowtimeDateTimeDataTypes < ActiveRecord::Migration[5.0]
  def change
    change_column :showtimes, :date, :string
    change_column :showtimes, :time, :string
  end
end
