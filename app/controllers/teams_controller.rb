class TeamsController < ApplicationController
    before_action :find_team, only: [:show, :edit, :update, :destroy]
    def index
        @teams = Team.all
        
    end
    
    def new
        @team = Team.new
        @team.member_teams.build
        @members = Member.all
        # 3.times do 
        #     @team.member_teams.build 
        # end
        
    end

    def create
        @team = Team.create(team_params)
        
        member_teams_params.each do |current_member_id|
            MemberTeam.create(team_id: @team.id, member_id: current_member_id.to_i)
        end

        if @team.valid?
        redirect_to team_path(@team)
        else 
            flash[:team_error] = @team.errors.full_messages
            redirect_to new_team_path
        end
    
    end
    
     def edit
    
     end
    
    def update
        @team.update(team_params)
        redirect_to team_path(@team)
    end
    
    def show
    
    end
    
    #  def destroy
    #     @team.destroy(params[:id])
    #  end
    private
    def team_params
        params.require(:team).permit(:name, :category)
    end
    def member_teams_params
        params.require(:team).require(:member_teams_attributes).require("0").require(:member_id)
    end
    def find_team
        @team = Team.find(params[:id])
   end
end
