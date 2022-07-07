class MoviesController < ApplicationController
    def show
        movie = Movie.find_by(id: params["id"])
        render json: movie.as_json
    end

    def index
        movie = Movie.all
        render json: movie.as_json
    end

    def create
        movie = Movie.create(
            title: params["title"],
            year: params["year"],
            plot: params["plot"],
        )
        render json: movie.as_json
    end

    def update
        movie = Movie.find_by(id: params["id"])
        movie.title = params["title"] || movie.title
        movie.year = params["year"] || movie.year
        movie.plot = params["plot"] || movie.plot
        movie.save
        render json: movie.as_json
    end
    
    def destroy
        movie = Movie.find_by(id: params["id"])
        movie.destroy
        render json: {message: "Movie entry removed from database"}
    end
end
