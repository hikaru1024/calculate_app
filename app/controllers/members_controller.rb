class MembersController < ApplicationController
    def index
    end
    def show
    end
    def new
        @member = Member.new
    end
    def create
        @member = member.create(member_params)
    end
    private
     def member_params
        params.require(:member).permit(:name)
     end
end
