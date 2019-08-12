class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
  end

  def create
    params.permit!
    @student = Student.create(params[:student])
    redirect_to student_path(@student.id)
  end

  def show
    @student = Student.find(params[:id])
  end

end
