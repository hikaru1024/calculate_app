class MembersController < ApplicationController


##ひかるの支払い
def show
    @member = Member.find_by(id: params[:id])

end



end