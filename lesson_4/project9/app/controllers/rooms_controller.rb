class RoomsController < ApplicationController

	def index
		@room = Room.all
	end

	def new
	end

	def create
		@room = Room.new(room_params)
		@room.save
		redirect_to @room
	end

	def show
		@room = Room.find(params[:id])
	end

	def edit
		@room = Room.find(params[:id])
	end

	def update
		@room = Room.find(params[:id])
		if @room.update(room_params)
			redirect_to @room
		else
			render 'edit'
		end
	end

	def destroy
		@room = Room.find(params[:id])
		@room.delete
		redirect_to room_path
	end

	private
	def room_params
		params.require(:room).permit(:lenght, :width, :hight, :square)
	end

end
