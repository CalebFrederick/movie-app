class ActorsController < ApplicationController
    def show
        actor = Actor.find_by(id: params["id"])
        render json: actor.as_json
    end

    def index
        actor = Actor.all
        render json: actor.as_json
    end

    def create
        actor = Actor.create(
            first_name: params[:first_name],
            last_name: params[:last_name],
            known_for: params[:known_for],
            gender: params [:gender],
            age: params [:age]
        )
    render json: actor.as_json
    end

    def update
        actor = Actor.find_by(id: params[:id])
        actor.first_name = params[:first_name] || actor.first_name
        actor.last_name = params[:last_name] || actor.last_name
        actor.known_for = params[:known_for] || actor.known_for
        actor.gender = params[:gender] || actor.gender
        actor.age = params[:age] || actor.age 
        actor.save 
        render json: actor.as_json
    end

    def destroy
        actor = Actor.find_by(id:params["id"])
        actor.destroy
        render json: {message: "Actor entry removed from database"}
    end
end
