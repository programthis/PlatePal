class CoachesController < ApplicationController
  def new
  	@coach = Coach.new
  end

  def create
  	@coach = Coach.new(coach_params)
  	if @coach.save
      redirect_to root_path, notice: "Signed up!"
    else
      render :new
    end
  end

  def show
  	@coach = Coach.find(params[:id])
  end

  def edit
  	@coach = Coach.find(params[:id])
  end

  def update
  	@coach = Coach.find(params[:id])
  	if @coach.update_attributes(coach_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def delete
  	@coach = Coach.find(params[:id])
    @coach.destroy
    redirect_to root_path
  end

  private
  def coach_params
  	params.require(:coach).permit(:name,:email, :password, :password_confirmation)
  end
end
