class ArtistsController < ApplicationController
    def index
        @artists = Artist.all
    end
    
    def show
        @artist = Artist.find(params[:id])
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(artist_params)
        if @artist.valid?
            redirect_to artist_path(@artist)
        else
            flash[:my_errors] = @artist.errors.full_messages
            render :new
        end
    end

    private

    def artist_params
        params.require(:artist).permit(:name, :title, :age)
    end
end
