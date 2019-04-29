class TeachersController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  def index
    @student = Student.all
  end

  def new 
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was sucessfully created' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end

     def update
    respond_to do |format|
      if @teacher.update(teacher_params)
        format.html { redirect_to @teacher, notice: 'Teacher was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher }
      else
        format.html { render :edit }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to teachers_url, notice: 'Teacher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_teacher
      @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:full_name,:first_name, :last_name, :phone, :email, :gender, :date_of_birth, :pearent_phone, :address)
    end

  end
      
end