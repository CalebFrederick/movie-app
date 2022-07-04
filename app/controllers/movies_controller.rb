class MoviesController < ApplicationController
    def show_movie
        movie = Movie.find_by(id: params["id"])
        render json: movie.as_json
    end

    def show_all_movies
        movie = Movie.all
        render json: movie.as_json
    end
end
