class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]

  def create
    @clerk = Clerk.find_by(username: clerk_login_params[:username])
    #clerk#authenticate comes from BCrypt
    if @clerk && @clerk.authenticate(clerk_login_params[:password])
      # encode token comes from ApplicationController
      token = encode_token({ clerk_id: @clerk.id })
      render json: { clerk: ClerkSerializer.new(@clerk), jwt: token }, status: :accepted
    else
      render json: { message: 'Invalid username or password' }, status: :unauthorized
    end
  end

  private

  def clerk_login_params
    # params { clerk: {username: 'wnayma', password: 'sddfeid' } }
    params.require(:clerk).permit(:username, :password)
  end
end
