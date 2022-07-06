Rails.application.routes.draw do

  get "/actor/:id", controller: "actors", action: "show_actor"

  get "/all_actors", controller: "actors", action: "show_all_actors"

  get "/movie/:id", controller: "movies", action: "show_movie"

  get "/movies", controller: "movies", action: "show_all_movies"

  get "/actor" => "actors#show_actor"

  get "/movies" => "movies#index"

  get "/movies/:id" => "movies#show_movie"
end