class BirdsController < ApplicationController
    def index
        render json: Bird.all
    end

    def show
        if 
            render json: Bird.find(params[:id]),status: :ok
        else render json:'bird you are looking for is not found',status: :not_found
        end
    end
end
