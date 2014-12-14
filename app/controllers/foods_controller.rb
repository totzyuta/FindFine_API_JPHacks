class FoodsController < ApplicationController

	def index
		@foods = Food.all
		render :json => @foods
	end

	def show
		@foods = Food.where(category: params[:category])
		@all_foods = Food.all
	end
end
