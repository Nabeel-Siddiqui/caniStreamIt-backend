class ShowSerializer < ActiveModel::Serializer
  attributes :id, :show_id, :genre, :title, :tagline, :overview, :imdb, :seasons, :providers, :poster, :cast, :rating, :recommendation, :trailer
end
