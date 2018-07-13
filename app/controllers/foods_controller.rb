class FoodsController < ApplicationController
	def index
		@food = Food.all
	end
	
	def new
		@food = Food.new
	end


	def create
		@food = Food.new(food_params)
		if @food.save
			flash[:success] = "Food Saved!"
			redirect_to root_path
		else
			render 'new'
		end

	end

	private
		def food_params
			params.require(:food).permit(:name, :price, :category)
		end
end
