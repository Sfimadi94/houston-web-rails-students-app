class InstructorsController < ApplicationController
  
  before_action :current_instructor, only: [:show, :edit, :update, :destroy]
  
  def index
    @instructors = Instructor.all
  end

  

  def show
    @students = @instructor.students
  end

  def new
    @instructor = Instructor.new
  end
  
  
  def create
    @instructor = Instructor.new(instructor_params)

    if @instructor.valid?
      @instructor.save
      redirect_to @instructor
    else
      flash[:errors] = @instructor.errors.full_messages
      redirect_to new_instructor_path
    end

  
  end


  def edit
    @students = Student.all
  end

  def update
    @instructor.update(instructor_params)
    redirect_to @instructor
  end


  def destroy
    @instructor.destroy
    redirect_to instructors_path

  end
  

  private
  
  def instructor_params
    params.require(:instructor).permit(:name)
  end


  def current_instructor
    @instructor = Instructor.find(params[:id])
  end
end
