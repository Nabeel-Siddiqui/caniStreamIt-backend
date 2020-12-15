class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.integer :show_id
      t.string :genre
      t.string :title
      t.string :tagline
      t.string :overview
      t.string :imdb
      t.string :seasons
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
