class CoursesController < ApplicationController
  def index
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
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
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def course_params
      params.require(:course).permit(:name, :start_date, :end_date, :teacher_id)
    end
end
