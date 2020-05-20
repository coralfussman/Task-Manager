class MembersController < ApplicationController
before_action :find_member, only: [:show, :edit, :update, :destroy]

    def new
        @member = Member.new

    end
    
    def create
         member = Member.create(member_params)
         if member.valid?
            flash[:success] = ["All set, to divi!"]
            redirect_to member_path(member)

         else
            flash[:member_error] = member.errors.full_messages
            redirect_to new_member_path

         end
    end
    
    def edit
    
        
    end
    
    def update
        @member.update(member_params)
        redirect_to member_path(@member)
    end
    
    def show
    #@team = Team.find(params[:id])
    end
    
    # def destroy
    #     @member.destroy
    #     redirect_to home_page_path
    
    # end

    private

    def member_params
        params.require(:member).permit(:name, :username, :password, :email, :notifications)
    end

     def find_member
         @member = Member.find(params[:id])
    end
end
