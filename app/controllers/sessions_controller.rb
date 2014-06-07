class SessionsController < ApplicationController
  def create
  	patient = Patient.find_by_email(params[:email])
    coach = Coach.find_by_email(params[:email])
  	if patient && patient.authenticate(params[:password])
  		session[:patient_id] = patient.id
  		redirect_to welcome_path(patient), notice: "Logged in!"
    elsif coach && coach.authenticate(params[:password])
      session[:coach_id] = coach.id
      redirect_to welcome_path(coach), notice: "Logged in!"
  	else
  		flash.now[:alert] = "Invalid email or password"
  		render :new
  	end
  end

  def new
  end

  def destroy
  	session.destroy
  	redirect_to new_session_path, notice: "Congrats, you've logged out!"
  end
end
