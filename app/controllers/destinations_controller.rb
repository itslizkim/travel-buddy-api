class DestinationsController < ApplicationController

    def index
        render json: Destination.all
    end
end
