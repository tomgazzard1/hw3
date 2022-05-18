class PlacesController < ApplicationController

  def index # Index is used to read (display) a list of places (HTTP Method: GET)
    @places = Place.all #This is plural because Index displays a list of places. You can name this something different from the other verbs (show, new, etc.)
  end

  def show # Show is used to read (display) info for a single place (HTTP Method: GET)
    @place = Place.find_by({"id" => params["id"]})
    @posts = Post.where({"place_id" => @place["id"]})
  end

  def new # New is a form to fill out about a new place (HTTP Method: GET)
    @place = Place.new
  end

  def create # Receives information from the form and creates the place (HTTP Method: POST)
    @place = Place.new
    @place["name"] = params["place"]["name"]
    @place.save
    redirect_to "/places"
  end



end
