class PartsController < ApplicationController

    before_action :authenticate_user!

    def index
        @parts = Part.search(params[:term])
    end

    def show
        @parts = Part.last
    end

    def new
        @part = Part.new
    end

    def edit
        @part = Part.find(params[:id])
    end

    def create
        @part = Part.new(part_params)
        @part.save
        redirect_to part_path
    end

    def update
        @part = Part.find(params[:id])
        if @part.update(part_params)
            flash[:success] = "Updated Part"
            redirect_to part_path
        else
            flash[:alert] = "Failed to update part"
            render :edit
        end
        redirect_to part_path
    end

    def destroy
        @part = Part.find(params[:id])
        @part.destroy
        flash[:success] = "deleted part"
        redirect_to part_path
    end

    private

    def part_params
        params.require(:part).permit(:name, :part_number, :desctiption, :cost_per_unit, :retail_price, :in_stock)
    end

end
