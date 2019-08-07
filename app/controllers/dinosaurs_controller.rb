class DinosaursController < ApplicationController
  def new
    @park = Park.find(params[:park_id])
    @dinosaur = Dinosaur.new
  end

  def create
    @dinosaur = Dinosaur.new(dinosaur_params)
    @park = Park.find(params[:park_id])
    @dinosaur.park = @park
    if @dinosaur.save
      redirect_to park_path(@park)
    else
      render :new # show the form
    end
  end

  def destroy
    @dinosaur = Dinosaur.find(params[:id])
    @dinosaur.destroy
    redirect_to park_path(@dinosaur.park)
  end

  private

  def dinosaur_params
    params.require(:dinosaur).permit(:name, :species)
  end

end
