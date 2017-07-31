class AddColumnMovieIdToOrdersTable < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :movie_id, :integer
  end
end
