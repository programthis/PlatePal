class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
  def current_patient
    @current_patient ||= Patient.find(session[:patient_id]) if session[:patient_id]
  end

  def calc_difference
	current_patient.current_weeks_weight - current_patient.last_weeks_weight
  end

  helper_method :current_patient
  helper_method :calc_difference
end
