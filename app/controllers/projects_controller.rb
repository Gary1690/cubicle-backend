class ProjectsController < ApplicationController
  def index
    projects =  Project.all 
    render json: projects,include: [:members]
  end

  def create
    project = Project.create(project_params)
    render json: project
  end


  private 
  def project_params
    params.require(:project).permit(:name,:deadline)
  end
end
