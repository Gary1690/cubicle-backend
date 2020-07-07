class ProjectsController < ApplicationController
  def index
    projects =  Project.all.sort_by{|x|x.id} 
    render json: projects,include: [:members]
  end

  def create
    project = Project.create(project_params)
    render json: project
  end

  def update 
    project =  Project.find_by(id:params[:id])
    project.update(project_params)
    render json: project
  end

  private 
  def project_params
    params.require(:project).permit(:name,:deadline)
  end
end
