class PagesController < ApplicationController
	def index
		@food = Food.all
	end

	
end