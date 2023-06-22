class MembersController < ApplicationController


##ひかるの支払い
def show
    @member = Member.find_by(id: params[:id])
    @payment_details = PaymentDetail.where(member_id: params[:id])
    @payment_details_cnt = PaymentDetail.group(:payment_id).count


end



end