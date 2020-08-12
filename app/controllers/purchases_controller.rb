class PurchasesController < ApplicationController
    def show
        @purchase = Purchase.find(params[:id])
    end
    
    def new
        @purchase = Purchase.new
    end

    def create
        @purchase = Purchase.create(purchase_params)
        artist = @purchase.artist_id
        redirect_to artist_path(artist)
    end

    private

    def purchase_params
        params.require(:purchase).permit(:artist_id, :instrument_id)
    end
end
