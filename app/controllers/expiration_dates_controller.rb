class ExpirationDatesController < ApplicationController
  before_action :set_expiration_date, only: [:show, :update, :destroy]

  # GET /expiration_dates
  def index
    @expiration_dates = ExpirationDate.all

    render json: @expiration_dates
  end

  # GET /expiration_dates/1
  def show
    render json: @expiration_date
  end

  # POST /expiration_dates
  def create
    @expiration_date = ExpirationDate.new(expiration_date_params)

    if @expiration_date.save
      render json: @expiration_date, status: :created, location: @expiration_date
    else
      render json: @expiration_date.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /expiration_dates/1
  def update
    if @expiration_date.update(expiration_date_params)
      render json: @expiration_date
    else
      render json: @expiration_date.errors, status: :unprocessable_entity
    end
  end

  # DELETE /expiration_dates/1
  def destroy
    @expiration_date.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expiration_date
      @expiration_date = ExpirationDate.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def expiration_date_params
      params.require(:expiration_date).permit(:date, :item_name, :category)
    end
end