class MerchantsController < ApplicationController
     skip_before_action :authorized, only: [:create]
    
    def create
    @merchant = Merchant.create(merchant_params)
    if @merchant.valid?
        @token=encode_token(merchant_id:@merchant.id)
      render json: { merchant: MerchantSerializer.new(@merchant), jwt:@token}, status: :created
    else
      render json: { error: 'failed to create merchant' }, status: :unprocessable_entity
    end
  end

  private
  def merchant_params
    params.require(:merchant).permit(:username, :password, :email,:role,:first_name,:last_name)
  end
end


