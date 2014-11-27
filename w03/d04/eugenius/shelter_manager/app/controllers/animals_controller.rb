class AnimalsController < ApplicationController
  def index
  	@animals = Animal.all 
  end

  def show
  	@animal = Animal.find(params[:id])
  end

  def new
  	@animal = Animal.new
  end

  def create
  	
		render 'new'	
  end

  def edit
  	@animal = Animal.find(params[:id])  	
  end

	def update
	  @animal = Animal.find(params[:id])
	  render 'edit'
	end
	 
  def destroy
  end
end
