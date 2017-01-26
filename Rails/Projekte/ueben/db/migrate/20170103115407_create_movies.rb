class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :rating
      t.date :preview

      t.timestamps
    end
  end
end
