class AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
  end

  def new
    @doctors = Doctor.all.map { |d| [d.first_name, d.last_name, d.id] }
    @patients = Patient.all.map { |p| [p.first_name, p.last_name, p.id] }
    @appointments = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
      if @appointment.save
        flash[:notice] = 'New Appointment Added'
        redirect_to appointments_path
      else
        render :new
      end
  end

  def destroy
    appointment = Appointment.find(params[:id])
    appointment.destroy
    redirect_to :root
  end

  private
    def appointment_params
      params.require(:appointment).permit(:doctor_id, :patient_id, :appointment_date, :appointment_time)
    end
end
