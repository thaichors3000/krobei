class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  def index
    @student = Student.find_by(id: params[:student_id])
    
    @courses = @student ? @student.courses : Course.all
    @courses = @courses.page(params[:page])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: t('flash.create_success', entity: t('entity.course')) }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @course = Course.find(params[:id])
  end

  def edit
  end

  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: t('flash.update_success', entity: t('entity.course'))} 
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @course.destroy
    if @course.errors.present?
      flash[:error] = error_message
      redirect_to courses_url
    else
      flash[:notice] = t('flash.destroy_success', entity: t('entity.course'))
      redirect_to courses_url
    end
  end

  private
    def set_course
      @course = Course.find(params[:id])
    end

    def course_params
      params.require(:course).permit(:name, :start_date, :max_students, :end_date, :teacher_id)
    end
    
    def error_message
      "#{@course.errors.full_messages.join(", ")} ( #{@course.students.map(&:full_name).join(", ")} )"
    end
end
