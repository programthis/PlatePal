class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
  def current_patient
    @current_patient ||= Patient.find(session[:patient_id]) if session[:patient_id]
  end

  def current_coach
    @current_coach ||= Coach.find(session[:coach_id]) if session[:coach_id]
  end

  def calc_difference
    if current_patient.current_weeks_weight
	   current_patient.current_weeks_weight - current_patient.last_weeks_weight
   else
    return 0
   end
  end

  helper_method :current_patient
  helper_method :current_coach
  helper_method :calc_difference
end
