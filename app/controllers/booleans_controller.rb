class BooleansController < ApplicationController
  before_action :set_boolean, only: [:show, :update, :destroy]

  # GET /booleans
  def index
    @booleans = Boolean.all

    render json: @booleans
  end

  # GET /booleans/1
  def show
    render json: @boolean
  end

  # POST /booleans
  def create
    puts boolean_params
    @boolean = Boolean.new(boolean_params)

    if @boolean.save
      render json: @boolean, status: :created, location: @boolean
    else
      render json: @boolean.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /booleans/1
  def update
    if @boolean.update(boolean_params)
      render json: @boolean
    else
      render json: @boolean.errors, status: :unprocessable_entity
    end
  end

  # DELETE /booleans/1
  def destroy
    @boolean.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boolean
      @boolean = Boolean.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def boolean_params
      params.require(:boolean).permit(:id, :name, :val)
    end
end
