class TasksController < ApplicationController

  def create 
    task = Task.create(task_params)
    members = Member.find(params[:memberIds])
    task.members << members
    render json: task, include: [:members]
  end

  private
  def task_params
    params.require(:task).permit(:name,:priority,:project_id)
  end

end
