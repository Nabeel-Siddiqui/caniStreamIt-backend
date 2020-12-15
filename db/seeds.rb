# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'rest-client'
require 'json'

puts "...deleting past data"
Favorite.delete_all
Movie.delete_all
Show.delete_all
Genre.delete_all
User.delete_all
puts "reset complete..."

# --------------------------------------------- USERS ---------------------------------------------

user1 = User.create!({username: "nabeel", password: "123456"})
user2 = User.create!({username: "nabeel2", password: "654321"})
user3 = User.create!({username: "nabeel3", password: "123654"})

# --------------------------------------------- GENRES ---------------------------------------------


movie_genre = "https://api.themoviedb.org/3/genre/movie/list?api_key=ecd05b4f1faf60be16b89f582e66867a&language=en-US"
show_genre = "https://api.themoviedb.org/3/genre/tv/list?api_key=ecd05b4f1faf60be16b89f582e66867a&language=en-US"

genre_array1 = JSON.parse(RestClient.get(movie_genre))["results"]
genre_array2 = JSON.parse(RestClient.get(show_genre))["results"]

response = JSON.parse(RestClient.get(movie_genre))
response['genres'].each do |genre|
  Genre.create!(genre)
end

# --------------------------------------------- MOVIES ---------------------------------------------

trending_movie= "https://api.themoviedb.org/3/trending/movie/day?api_key=ecd05b4f1faf60be16b89f582e66867a"

movie_array1 = JSON.parse(RestClient.get(trending_movie))["results"]
movie_array2 = JSON.parse(RestClient.get(trending_movie + "&page=2"))["results"]
movie_array3 = JSON.parse(RestClient.get(trending_movie + "&page=3"))["results"]
movie_array4 = JSON.parse(RestClient.get(trending_movie + "&page=4"))["results"]

POPULAR MOVIES LIST 

movie_array1.each do |movie|
    response = JSON.parse(RestClient.get("https://api.themoviedb.org/3/movie/#{movie['id']}?api_key=ecd05b4f1faf60be16b89f582e66867a&language=en-US"))
    Movie.create!(
        movie_id: response['id'],
        title: response['title'],
        tagline: response['tagline'],
        overview: response['overview'],
        imdb: response['imdb_id'],
        release_date: response['release_date'],
        poster: response['poster_path'],
        genre: response['genres']
    )
end

movie_array2.each do |movie|
    response = JSON.parse(RestClient.get("https://api.themoviedb.org/3/movie/#{movie['id']}?api_key=ecd05b4f1faf60be16b89f582e66867a&language=en-US"))
    Movie.create!(
        movie_id: response['id'],
        title: response['title'],
        tagline: response['tagline'],
        overview: response['overview'],
        imdb: response['imdb_id'],
        release_date: response['release_date'],
        poster: response['poster_path'],
        genre: response['genres']
    )
end

# might be issue - check later
movie_array3.each do |movie|
    response = JSON.parse(RestClient.get("https://api.themoviedb.org/3/movie/#{movie['id']}?api_key=ecd05b4f1faf60be16b89f582e66867a&language=en-US"))
    Movie.create!(
        movie_id: response['id'],
        title: response['title'],
        tagline: response['tagline'],
        overview: response['overview'],
        imdb: response['imdb_id'],
        release_date: response['release_date'],
        poster: response['poster_path'],
        genre: response['genres']
    )
end

movie_array4.each do |movie|
    response = JSON.parse(RestClient.get("https://api.themoviedb.org/3/movie/#{movie['id']}?api_key=ecd05b4f1faf60be16b89f582e66867a&language=en-US"))
    Movie.create!(
        movie_id: response['id'],
        title: response['title'],
        tagline: response['tagline'],
        overview: response['overview'],
        imdb: response['imdb_id'],
        release_date: response['release_date'],
        poster: response['poster_path'],
        genre: response['genres']
    )
end

# --------------------------------------------- TV SHOWS ---------------------------------------------

trending_shows = "https://api.themoviedb.org/3/trending/tv/day?api_key=ecd05b4f1faf60be16b89f582e66867a"

shows_array1 = JSON.parse(RestClient.get(trending_shows))["results"]
shows_array2 = JSON.parse(RestClient.get(trending_shows + "&page=2"))["results"]
shows_array3 = JSON.parse(RestClient.get(trending_shows + "&page=3"))["results"]
shows_array4 = JSON.parse(RestClient.get(trending_shows + "&page=4"))["results"]


# POPULAR TV SHOWS LIST

shows_array1.each do |tv|
    response = JSON.parse(RestClient.get("https://api.themoviedb.org/3/tv/#{tv['id']}?api_key=ecd05b4f1faf60be16b89f582e66867a&language=en-US"))
    Show.create!(
        show_id: response['id'],
        title: response['title'],
        tagline: response['tagline'],
        overview: response['overview'],
        imdb: response['imdb_id'],
        seasons: response['number_of_seasons'],
        poster: response['poster_path'],
        genre: response['genres']
    )
end

shows_array2.each do |tv|
    response = JSON.parse(RestClient.get("https://api.themoviedb.org/3/tv/#{tv['id']}?api_key=ecd05b4f1faf60be16b89f582e66867a&language=en-US"))
    Show.create!(
        show_id: response['id'],
        title: response['title'],
        tagline: response['tagline'],
        overview: response['overview'],
        imdb: response['imdb_id'],
        seasons: response['number_of_seasons'],
        poster: response['poster_path'],
        genre: response['genres']
    )
end

shows_array3.each do |tv|
    response = JSON.parse(RestClient.get("https://api.themoviedb.org/3/tv/#{tv['id']}?api_key=ecd05b4f1faf60be16b89f582e66867a&language=en-US"))
    Show.create!(
        show_id: response['id'],
        title: response['title'],
        tagline: response['tagline'],
        overview: response['overview'],
        imdb: response['imdb_id'],
        seasons: response['number_of_seasons'],
        poster: response['poster_path'],
        genre: response['genres']
    )
end

shows_array4.each do |tv|
    response = JSON.parse(RestClient.get("https://api.themoviedb.org/3/tv/#{tv['id']}?api_key=ecd05b4f1faf60be16b89f582e66867a&language=en-US"))
    Show.create!(
        show_id: response['id'],
        title: response['title'],
        tagline: response['tagline'],
        overview: response['overview'],
        imdb: response['imdb_id'],
        seasons: response['number_of_seasons'],
        poster: response['poster_path'],
        genre: response['genres']
    )
end


# --------------------------------------------- FAVORITES ---------------------------------------------

Favorite.create!(user_id: User.first.id, movie_id: Movie.first.id, show_id: Show.first.id)
Favorite.create!(user_id: User.second.id, movie_id: Movie.second.id, show_id: Show.second.id)
Favorite.create!(user_id: User.third.id, movie_id: Movie.third.id, show_id: Show.third.id)
