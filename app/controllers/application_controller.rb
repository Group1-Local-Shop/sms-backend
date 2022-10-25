class ApplicationController < ActionController::API
     before_action :authorized
    def encode_token(payload)
        JWT.encode(payload, 'my_s3cr3t')
    end
    def auth_header
        request.headers['Authorization']
    end
    def decoded_token
        if auth_header
            token=auth_header.split(' ')[1]
            begin
                JWT.decode(token,'my_s3cr3t', true, algorithm:'HS256')
            rescue JWT::DecodeError
                nil
            end
        end
    end
def current_clerk
    if decoded_token
      # decoded_token=> [{"user_id"=>2}, {"alg"=>"HS256"}]
      # or nil if we can't decode the token
      if @clerk
      clerk_id = decoded_token[0]['clerk_id']
      @clerk = Clerk.find_by(id: clerk_id)
      elsif @merchant
        merchant_id = decoded_token[0]['merchant_id']
        @merchant = Merchant.find_by(id: merchant_id)
      elsif @admin
        admin_id = decoded_token[0]['admin_id']
        @admin= Admin.find_by(id: admin_id)
      
    end
  end
end

  def logged_in?
    !!current_clerk
  end
  def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end
end
