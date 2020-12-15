class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.integer :movie_id
      t.string :genre
      t.string :title
      t.string :tagline
      t.string :overview
      t.string :imdb
      t.string :release_date
      t.string :providers
      t.string :poster
      t.string :cast
      t.string :rating
      t.string :recommendation
      t.string :trailer

      t.timestamps
    end
  end
end
