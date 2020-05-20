class ProjectsController < ApplicationController

    before_action :find_project, only: [:show, :edit, :update, :destroy]
    
    def index
        @projects = Project.all
    end
    
    def new
        @project = Project.new 
        #@member = Task.member_id.find(params[:id])
    end
    
    def create
      
        @project = Project.create(project_params)
        if @project.valid?
            redirect_to project_path(@project)
        else
            flash[:project_errors] = @project.errors.full_messages
            redirect_to new_project_path
        end
    end
    def show
    
    end
    
    # def edit
    
    # end
    
    # def update
    
    # end
    
    
    # def destroy
    
    # end

    private
    def project_params
        params.require(:project).permit(:name, :description, :team_id, :date)
    end
    def find_project
        @project = Project.find(params[:id])
   end

end
