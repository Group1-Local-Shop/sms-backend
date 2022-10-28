class Api::V1::ClerksController < ApplicationController
      skip_before_action :authorized, only: [:create]
      def profile
        render json: { clerk: ClerkSerializer.new(current_clerk) }, status: :accepted
    end
    def create
    @clerk = Clerk.create(clerk_params)
    if @clerk.valid?
        @token=encode_token(clerk_id:@clerk.id)
      render json: { clerk: ClerkSerializer.new(@clerk), jwt:@token }, status: :created
    else
      render json: { error: 'failed to create clerk' }, status: :unprocessable_entity
    end
  end

  private
  def clerk_params
    params.require(:clerk).permit(:username, :password, :email,:role,:first_name,:last_name)
  end
  
end
