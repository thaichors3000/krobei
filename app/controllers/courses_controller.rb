class CoursesController < ApplicationController
 before_action :set_course, only: [:show, :edit, :update, :destroy]

  def index
    @student = Student.find_by(id: params[:student_id])

    @courses = @student ? @student.courses : Course.all
  end

  def new
    @student = Student.find_by(id: params[:student_id])
    @course = Course.new
  end

  def create
    @student = Student.find_by(id: params[:student_id])

    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        if @student
          @enrolment = Enrolment.new(student_id: params[:student_id], course_id: @course.id)
          @enrolment.save
        end
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @course = Course.find(params[:id])
    @students = @course.students
  end

  def edit
  end

  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Course was successfully destoryed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_course
      @course = Course.find(params[:id])
    end

    def course_params
      params.require(:course).permit(:name, :start_date, :end_date, :teacher_id, :max_students)
    end
end
