class PostsController < ApplicationController

    def new # New is a form to fill out about a new post (HTTP Method: GET)
        @post = Post.new
        @post["place_id"] = params["place_id"]
    end

    def create # Receives information from the form and creates the post (HTTP Method: POST)
        @post = Post.new
        @post["title"] = params["post"]["title"]
        @post["description"] = params["post"]["description"]
        @post["posted_on"] = params["post"]["posted_on"]
        @post["place_id"] = params["post"]["place_id"]
        @post.save
        redirect_to "/places/#{@post["place_id"]}"
    end

end
