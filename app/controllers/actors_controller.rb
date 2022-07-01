class ActorsController < ApplicationController
    def show_actor
        actor = Actor.find_by(id: params["id"])
        render json: product.as_json
    end
end
