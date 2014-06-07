class PatientsController < ApplicationController

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    @patient.coach_id = current_coach
    if @patient.save
      redirect_to root_path, notice: "New patient created!"
    else
      render :new
    end
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    @patient = Patient.find(params[:id])
    if @patient.update_attributes(patient_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @patient = Patient.find(params[:id])
    @patient.destroy
    redirect_to root_path
  end

  private
  def patient_params
    params.require(:patient).permit(:name,:email,:password,:password_confirmation, :age, :weight, :phone, :avatar, :current_weeks_weight, :last_weeks_weight, :height)
  end
end
