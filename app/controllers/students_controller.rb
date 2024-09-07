class StudentsController < ApplicationController

  def index
    students = Student.all
    
    if params[:name]
      
     found = students.find {|student| student.first_name.downcase == params[:name] || student.last_name.downcase == params[:name]}
      # byebug
       render json: found
    else
    
    render json: students
  end

end

  def show
    student = Student.find(params[:id])
    render json: student

  end

end
