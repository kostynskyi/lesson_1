class StoresController < ApplicationController

	def index
		@store = Store.all
	end

	def new
	end

	def create
		@store = Store.new(store_params)
		@store.save
		redirect_to @store
	end

	def show
		@store = Store.find(params[:id])
	end

	def edit
		@store = Store.find(params[:id])
	end

	def update
		@store = Store.find(params[:id])
		if @store.update(store_params)
			redirect_to @store
		else
			render 'edit'
		end
	end

	def destroy
		@store = Store.find(params[:id])
		@store.delete
		redirect_to rstore_path
	end

	private
	def store_params
		params.require(:store).permit(:product, :price, :description)
	end
end
