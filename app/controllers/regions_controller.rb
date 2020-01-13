class RegionsController < ApplicationController
  def new
    @animal = Animal.find(params[:animal_id])
    @region = @animal.regions.new
    render :new
  end
end

def create
    @animal = Animal.find(params[:animal_id])
    @region = @animal.regions.new(region_params)
    if @region.save
      redirect_to animal_path(@animal)
    else
      render :new
    end
  end

  def show
    @animal = Animal.find(params[:animal_id])
    @region = Region.find(params[:id])
    render :show
  end

  def edit
  @animal = Animal.find(params[:animal_id])
  @region = Region.find(params[:id])
  render :edit
end

def update
  @region = Region.find(params[:id])
  if @region.update(region_params)
    redirect_to animal_path(@region.animal)
  else
    render :edit
  end
end

def destroy
  @region = Region.find(params[:id])
  @region.destroy
  redirect_to animal_path(@region.animal)
end

  private
    def region_params
      params.require(:region).permit(:name)
    end
