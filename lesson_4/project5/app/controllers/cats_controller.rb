class CatsController < ApplicationController

	def index
		@cat = Cat.all
	end

	def new
	end

	def create
		@cat = Cat.new(cat_params)
		@cat.save
		redirect_to @cat
	end

	def show
		@cat = Cat.find(params[:id])
	end

	def edit
		@cat = Cat.find(params[:id])
	end

	def update
		@cat = Cat.find(params[:id])
		if @cat.update(cat_params)
			redirect_to @cat
		else
			render 'edit'
		end
	end

	def destroy
		@cat = Cat.find(params[:id])
		@cat.destroy
		redirect_to cats_path
	end

	private
	def cat_params
		params.require(:cat).permit(:name, :text)
	end

end
