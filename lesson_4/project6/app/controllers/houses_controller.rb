class HousesController < ApplicationController

	def index
		@house = House.all
	end

	def new
	end

	def create
		@house = House.new(hous_params)
		@house.save
		redirect_to @house
	end

	def show
		@house = House.find(params[:id])
	end

	def edit
		@house = House.find(params[:id])
	end

	def update
		@house = House.find(params[:id])
		if @house.update(hous_params)
			redirect_to @house
		else
			render 'edit'
		end
	end

	def destroy
		@house = House.find(params[:id])
		@house.destroy
		redirect_to houses_path
	end


	private
	def hous_params
		params.require(:house).permit(:city, :street, :number)
	end
end
