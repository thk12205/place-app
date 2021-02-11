class Api::PlacesController < ApplicationController

  # get "/api/places" => "places#index"
  # post "/api/places" => "places#create"
  # get "/api/places/:id" => "places#show"
  # put "/api/places/:id" => "places#update"
  # delete "/api/places/:id" => "places#destroy"

  def index
    @places = Place.all
    render 'index.json.jb'
  end

  def create
    @place = Place.new(
      name: params[:name],
      address: params[:address]
    )

    if @place.save
      render 'show.json.jb'
    else
      render json: {errors: @place.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @place = Place.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def update
    @place = Place.find_by(id: params[:id])
    
    @place.name = params[:name] || @place.name
    @place.address = params[:address] || @place.address

    if @place.save
      render 'show.json.jb'
    else
      render json: {errors: @place.errors.full_messages}, status: :unprocessable_entity
    end
  end

  
end
