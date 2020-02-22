class StudentsController < ApplicationController
  def index
    user = User.find(params[:token])
    if !params[:id]
      students = SigaeduApi::AcademicRegistry::Student.new(user.login, user.password)
      render json: students.get_data(params[:campus])
    else 
      student = SigaeduApi::AcademicRegistry::StudentData.new(user.login, user.password)
      render json: student.get_data(params[:id])
    end
  end
end
