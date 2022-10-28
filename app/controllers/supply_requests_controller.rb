class SupplyRequestsController < ApplicationController
     before_action :set_supply_request, only: %i[ show update destroy ]

  # GET /supply_requests
  def index
    @supply_requests = SupplyRequest.all

    render json: @supply_requests
  end

  # GET /supply_requests/1
  def show
    render json: @supply_request
  end

  # POST /supply_requests
  def create
    @supply_request = SupplyRequest.new(supply_request_params)

    if @supply_request.save
      render json: @supply_request, status: :created, location: @supply_request
    else
      render json: @supply_request.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /supply_requests/1
  def update
    if @supply_request.update(supply_request_params)
      render json: @supply_request
    else
      render json: @supply_request.errors, status: :unprocessable_entity
    end
  end

  # DELETE /supply_requests/1
  def destroy
    @supply_request.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supply_request
      @supply_request = SupplyRequest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def supply_request_params
      params.require(:supply_request).permit(:request_status)
    end
end
