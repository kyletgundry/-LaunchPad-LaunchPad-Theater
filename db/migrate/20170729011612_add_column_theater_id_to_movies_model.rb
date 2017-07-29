class AddColumnTheaterIdToMoviesModel < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :theater_id, :integer
    remove_column :showtimes, :theater_id, :integer
  end
end
