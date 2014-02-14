class ArtistsController < ApplicationController

    def index
        @artist = Artist.all
    end

    def show
        @artist = Artist.find(params[:id])
        @paintings = @artist.paintings
    end

    def new
        @artist = Artist.new
    end

    def create
        artist = Artist.create(artist_params)
        redirect_to artist
    end

    def edit
        @artist = Artist.find(params[:id])
    end

    def update
        artist = Artist.find(params[:id])
        artist.update_attributes(artist_params)
        redirect_to artist
    end

    def destroy
        artist = Artist.find(params[:id])
        artist.destroy
        redirect_to artists_path
    end

    def artist_params
        params.require(:artist).permit(:name,:period,:nationality,:dob,:image)
    end

end
