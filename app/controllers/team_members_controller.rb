class TeamMembersController < ApplicationController

  def create
    team_member =  TeamMember.create(team_member_params)
    render json: team_member, include: [:project, :member]
  end


  private 
  def team_member_params
    params.require(:team_member).permit(:project_id,:member_id)
  end

end
