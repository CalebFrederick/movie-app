class ActorsController < ApplicationController
    def show_actor
        actor = Actor.find_by(id: params["id"])
        render json: actor.as_json
    end

    def show_all_actors
        actor = Actor.all
        render json: actor.as_json
    end
end
