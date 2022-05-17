class PlacesController < ApplicationController

  def index # Index is used to read (display) a list of places (HTTP Method: GET)
    @places = Place.all #Why is this place and not places? Are classes singular? Where is the class defined and how?
  end

  def show # Show is used to read (display) info for a single place (HTTP Method: GET)
    @place = Place.find_by({ "id" => params["id"] })
  end

  def new # New is a form to fill out about a new place (HTTP Method: GET)
    @place = Place.new
  end

  def create # Receives information from the form and creates the place (HTTP Method: POST)
    @place = Company.new
    @place["name"] = params["name"]
    @place.save
    redirect_to "/places"
  end

end
