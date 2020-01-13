class AnimalsController < ApplicationController

  def index
      @animals = Animal.all
      render :index
    end
    def new
      @animal = Animal.new
      @animals = Animal.all
      render :new
    end

    def create
      @animal = Animal.new(animal_params)
      if @animal.save
        redirect_to animals_path
      else
        render :new
      end
    end

    def edit
      @animal = Animal.find(params[:id])
      @animals = Animal.all
      render :edit
    end

    def show
     @animal = Animal.find(params[:id])
     @animals = Animal.all
     render :show
   end

   def update
   @animal= Animal.find(params[:id])
   if @animal.update(animal_params)
     redirect_to animals_path
   else
     render :edit
   end
 end

 def destroy
  @animals = Animal.all
  @animal = Animal.find(params[:id])
  @animal.destroy
  redirect_to animals_path
end

  private
   def animal_params
     params.require(:animal).permit(:name, :latitude, :longitude)
   end

end
