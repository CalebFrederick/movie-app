class MoviesController < ApplicationController
    before_action :authenticate_admin, except: [:index, :show]

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
            title: params[:title],
            year: params[:year],
            plot: params[:plot],
            director: params[:director],
            english: params[:english],
        )
        if movie.create
            render json: movie
        else 
            render json: { errors: movie.errors.full_messages }, status: 406
        end
    end

    def update
        movie = Movie.find_by(id: params["id"])
        movie.title = params[:title] || movie.title
        movie.year = params[:year] || movie.year
        movie.plot = params[:plot] || movie.plot
        movie.director = params[:director] || movie.director
        movie.english = params[:english] || movie.english
        movie.save
        
        if movie.create
            render json: movie
        else 
            render json: { errors: movie.errors.full_messages }, status: 406
        end
    end
    
    def destroy
        movie = Movie.find_by(id: params["id"])
        movie.destroy
        render json: {message: "Movie entry removed from database"}
    end
end
