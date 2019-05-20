class EnrolmentsController < ApplicationController
  def new
    @enrolment = Enrolment.new

    if params[:student_id]
      @student = Student.find_by(id: params[:student_id])
      @courses = Course.all
    else
      @course = Course.find_by(id: params[:course_id])
      @students = Student.all
    end
  end

  def create
    if params[:student_id]
      @enrolment = Enrolment.new(student_id: params[:student_id], course_id: params[:enrolment][:course_id])
    else
      byebug
      @enrolment = Enrolment.new(student_id: params[:enrolment][:student_id], course_id: params[:course_id])
    end

    respond_to do |format|
      if @enrolment.save
        if params[:student_id]
          @student = Student.find_by(id: params[:student_id])
          @courses = @student.courses
          format.html { redirect_to student_courses_path(@student), notice: 'Enrolment was successfully created.' }
        else
          @course = Course.find_by(id: params[:course_id])
          @students = @course.students
          format.html { redirect_to course_students_path(@course), notice: 'Enrolment was successfully created.' }
        end

        format.json { render :show, status: :created, location: @enrolment }
      else
        format.html { render :new }
        format.json { render json: @enrolment.erros, status: :unprocessable_entity }
      end
    end
  end

  def show
    @enrolment = Enrolment.find(params[:id])
  end

  def edit
  end
end