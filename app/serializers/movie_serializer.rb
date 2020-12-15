class MovieSerializer < ActiveModel::Serializer
  attributes :id, :movie_id, :genre, :title, :tagline, :overview, :imdb, :release_date, :providers, :poster, :cast, :rating, :recommendation, :trailer
end
