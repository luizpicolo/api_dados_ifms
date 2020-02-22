class CoursesController < ApplicationController
  def index
    user = User.find(params[:token])
    courses = SigaeduApi::AcademicRegistry::Course.new(user.login, user.password)
    render json: courses.get_data(params[:campus])
  end
end
