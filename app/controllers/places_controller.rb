class PlacesController < ApplicationController
  def index
    # find all Place rows
    @places = Place.all
    #render companies/index view
  end

  def show
    # find a Place
    @place = Place.find_by({"id" => params["id"]})
    @posts = Post.where({"place_id" => @place["id"]})
    # render places/show view with details
  end

 
  def new
    @place = Place.new
  end

  def create
    #start with new Place
    @place = Place.new

    #assign user-entered form data to Place columns
    @place["name"] = params["place"]["name"]

    #save Place row
    @place.save

    #redirect user
    redirect_to "/places"
  end

end
