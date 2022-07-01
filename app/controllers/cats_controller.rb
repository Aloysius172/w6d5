class CatsController < ApplicationController
    def index
        @cats = Cat.all
        render :index
    end

    def show
        @cat = Cat.find(params[:id])
        render :show
    end

    def new
        render :new
    end

    def create
        debugger
        @cat = Cat.new(cats_params)
        if @cat.save!
            redirect_to cats_url
        else
            render json: @cat.errors.full_messages, status: :unprocessable_entity
        end
    end
   
    private
    def cats_params
        params.require(:cat).permit(:birth_date, :name, :sex, :color, :description)
    end
end