class StudentsController < ApplicationController
  before_action :set_student, only: [:show]
  
  def index
    @students = Student.all
  end

  def show
    
  end

  def activate
   # to change the active status of a student
   # if active == false, true
   # if active == true, false

  #  if @student.active == false
  #   @student.active = true
  #  else 
  #   @student.active = false 
  #  end 
  #  @student.save
   @student.active = !@student.active 
   @student.save
   redirect_to student_path(@student)
  end 

  private

    def set_student
      @student = Student.find(params[:id])
    end
    
end