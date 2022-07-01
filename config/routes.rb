Rails.application.routes.draw do

  get "/actor/:id", controller: "actors", action: "show_actor"
end
