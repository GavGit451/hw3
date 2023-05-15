class PlacesController < ApplicationController
  def index
    # find all Place rows
    @places = Place.all
    #render companies/index view
  end

  def show
    # find a Place
    @place = Place.find_by({"id" => params["id"]})
    # render places/show view with details
  end


end
