class ProjectsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @projects = current_user.projects.all
  end

  def new
    @project = Project.new
  end

  def create
    project = current_user.projects.new(project_params)
    if project.save
      redirect_to projects_path, notice: "Project created!"
    else
      render :new
    end
  end

  private

  def project_params
    params.require(:project).permit(:name)
  end
end
