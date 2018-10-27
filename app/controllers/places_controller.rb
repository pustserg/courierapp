class PlacesController < ApplicationController
  before_action :find_place, only: %i(show edit update destroy)
  def index
    @places = Place.all
  end

  def show
  end

  def new
    @place = Place.new
  end

  def create
    if (@place = Place.create(place_params))
      redirect_to action: :index
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @place.update(place_params)
      redirect_to :index
    else
      render :edit
    end
  end

  def destroy
    if @place.destroy
      redirect_to :index
    else
      redirect_to :show
    end
  end

  private

  def find_place
    @place = Place.find(params[:id])
  end

  def place_params
    params.require(:place).permit(:title, :longitude, :latitude)
  end
end
