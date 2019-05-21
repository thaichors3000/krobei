class EnrolmentsController < ApplicationController
  def index
  end

  def create
    @enrolment = Enrolment.new(enrolment_params)

    if @enrolment.save
      redirect_to students_path, notice: 'Enrolment was successfully created.'
    else
      flash[:error] = @enrolment.errors.full_messages.join(',') if @enrolment.errors.present?
      render :new
    end
  end

  def new
    @enrolment = Enrolment.new(student_id: params[:student_id])
  end

  def destroy
    
  end

  def show
  end

  private
    def enrolment_params
      params.require(:enrolment).permit(:student_id, :course_id)
    end
end
