class StudentsController < ApplicationController
  
  before_action :current_student, only: [:show, :edit, :update, :destroy]
  def index
    @students = Student.all
    
  end

  def show
    # @instructors = @students.instructor_id
    @instructor = @student.instructor
  end

  def new
    @student = Student.new
    @instructor = Instructor.all
  end

  def create
    @student = Student.new(student_params)

    if @student.valid?
      @student.save
      redirect_to @student
    else
      flash[:errors] = @student.errors.full_messages
      redirect_to new_student_path
    end

  end

 

  def edit
    @student = current_student
    

  end

  def update
    @student.update(student_params)
    redirect_to @student
  end

  

  def destroy
    @student.destroy
    redirect_to students_path
  end

  private

  def student_params
    params.require(:student).permit(:name, :major, :age, :instructor_id)
  end

  def current_student
    @student = Student.find(params[:id])
  end
end
