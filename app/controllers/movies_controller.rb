class MoviesController < ApplicationController
  # before_action :set_movie, only: %i[ show edit update destroy ]

  # GET /movies or /movies.json
  def index
    @movies = Movie.all
    @movies = @movies.word_search(search_params[:keyword]) if search_params[:keyword].present?
    @movies = @movies.showing_search(search_params[:is_showing]) if search_params[:is_showing].present?
  end

  private

  # Only allow a list of trusted parameters through.
  def search_params
    params.permit(:keyword, :is_showing)
  end
end
