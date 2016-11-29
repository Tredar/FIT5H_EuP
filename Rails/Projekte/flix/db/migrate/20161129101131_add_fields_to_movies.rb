class AddFieldsToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :rating, :string
    add_column :movies, :total_gross, :integer
  end
end
