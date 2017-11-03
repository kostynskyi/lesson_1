class DogsController < ApplicationController

	def index
		@dog = Dog.all
	end

	def show
		@dog = Dog.find(params[:id])
	end

	def new
	end

	def edit
		@dog = Dog.find(params[:id])
	end

	def create
		@dog = Dog.new(dogs_params)
		@dog.save
		redirect_to @dog
	end

	def update
		@dog = Dog.find(params[:id])
		if @dog.update(dogs_params)
			redirect_to @dog
		else
			render 'edit'
		end
	end

	def destroy
		@dog = Dog.find(params[:id])
		@dog.destroy
		redirect_to dogs_path
	end

	private
	def dogs_params
		params.require(:dog).permit(:title, :text)
	end
end
