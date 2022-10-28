class AuthsController < ApplicationController
    skip_before_action :authorized, only: [:create]

  def create
    @merchant = Merchant.find_by(username: merchant_login_params[:username])
    #clerk#authenticate comes from BCrypt
    if @merchant && @merchant.authenticate(merchant_login_params[:password])
      # encode token comes from ApplicationController
      token = encode_token({ merchant_id: @merchant.id })
      render json: { merchant: MerchantSerializer.new(@merchant), jwt: token }, status: :accepted
    else
      render json: { message: 'Invalid username or password' }, status: :unauthorized
    end
  end

  private

  def merchant_login_params
    # params { clerk: {username: 'wnayma', password: 'sddfeid' } }
    params.require(:merchant).permit(:username, :password)
  end
end
