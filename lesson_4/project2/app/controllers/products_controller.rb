class ProductsController < ApplicationController

	def index
		@product = Product.all
	end

	def show
		@product = Product.find(params[:id])
	end

	def new
	end

	def edit
		@product = Product.find(params[:id])
	end

	def create
		@product = Product.new(product_params)
		@product.save
		redirect_to @product
	end

	def update
		@product = Product.find(params[:id])
		if @product.update(product_params)
			redirect_to @product
		else
			render 'edit'
		end
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		redirect_to products_path
	end

	private 
	def product_params
		params.require(:product).permit(:title, :text)
	end
end
