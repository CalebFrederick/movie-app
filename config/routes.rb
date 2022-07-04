Rails.application.routes.draw do

  get "/actor/:id", controller: "actors", action: "show_actor"

  get "/movie/:id", controller: "movies", action: "show_movie"

  get "/movies", controller: "movies", action: "show_all_movies"
end
