Rails.application.routes.draw do

  # get "/actor/:id", controller: "actors", action: "show_actor"

  # get "/index", controller: "actors", action: "show_all_actors"

  # get "/movie/:id", controller: "movies", action: "show_movie"

  # get "/movies", controller: "movies", action: "show_all_movies"

  # get "/actor" => "actors#show_actor"

  # get "/movies" => "movies#index"

  # get "/movies/:id" => "movies#show_movie"

  ### Movies Routes

  get "/movies" => "movies#index"

  get "/movies/:id" => "movies#show"

  post "/movies" => "movies#create"

  patch "/movies/:id" => "movies#update"

  delete "/movies/:id" => "movies#destroy"

  ### Actors Routes

  get "/actors" => "actors#index"

  get "/actors/:id" => "actors#show"

  post "/actors" => "actors#create"

  patch "/actors/:id" => "actors#update"

  delete "/actors/:id" => "actors#destroy"
end