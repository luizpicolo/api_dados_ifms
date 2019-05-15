require 'sigaedu_api'

class StudentsController < ApplicationController
  def index
    user = User.find(params[:token])
    siga = SigaeduApi::AcademicRegistry::Student.new(user.login, user.password)
    render json: siga.get_data
  end
end
