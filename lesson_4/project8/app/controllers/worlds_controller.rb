class WorldsController < ApplicationController

	def index
		@world = World.all
	end

	def show
		@world = World.find(params[:id]) 
	end

	def new
	end

	def create
		@world = World.new(world_params)
		@world.save
		redirect_to @world
	end

	def edit
		@world = World.find(params[:id])
	end

	def update
		@world = World.find(params[:id])
		if @world.update(world_params)
			redirect_to @world
		else
			rende 'edit'
		end
	end

	def destroy
		@world = World.find(params[:id])
		@world.destroy
		redirect_to worlds_path
	end

	private
	def world_params
		params.require(:world).permit(:part, :country, :city)
	end
end
