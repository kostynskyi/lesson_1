class AnimalsController < ApplicationController

	def index
		@animal = Animal.all
	end

	def new
	end

	def create
		@animal = Animal.new(animal_params)
		@animal.save
		redirect_to @animal
	end

	def show
		@animal = Animal.find(params[:id])
	end

	def edit
		@animal = Animal.find(params[:id])
	end

	def update
		@animal = Animal.find(params[:id])
		if @animal.update(params.require(:animal).permit(:name, :text))
			redirect_to @animal
		else
			render 'edit'
		end
	end

	def destroy
		@animal = Animal.find(params[:id])
		@animal.destroy
		redirect_to animal_path
	end

	private
	def animal_params
		params.permit(:name, :text)
	end
end
