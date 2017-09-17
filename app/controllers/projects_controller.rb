class ProjectsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :require_login

  def index
    @projects = Project.all
  end

  def create
    Project.create(title: params['title'],description: params['description'],price: params['price'])
    redirect_to projects_index_path
  end

  def delete
    project_aux = Project.find(params['code'])
    project_aux.destroy
    redirect_to projects_index_path
  end

  #FILTROS
  def require_login
    if not user_signed_in?
        redirect_to new_user_session_path
    end
  end
  def require_fill

  end
end
