require 'securerandom'
require 'base64'

class EventsController < ApplicationController
  
  def index
    @event = Event.find_by!(code: params['event_code'])
  end
  
  def new
    
  end

  def create
    event = Event.create(
      name: params[:name],
      code: generate_random_code
    )

    redirect_to "/#{event.code}"
    
  end

  private
  def generate_random_code
    code_length = 12  # コードの長さ（任意の値に変更可能）

    # ランダムなバイト列を生成
    random_bytes = SecureRandom.random_bytes(code_length)

    # バイト列をBase64エンコード
    base64_code = Base64.urlsafe_encode64(random_bytes, padding: false)[0, code_length]

    base64_code
  end


end
