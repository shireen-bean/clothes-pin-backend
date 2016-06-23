class ShirtsController < ApplicationController
  before_action :set_shirt, only: [:show, :update, :destroy]

  # GET /shirts
  # GET /shirts.json
  def index
    @shirts = Shirt.all

    render json: @shirts
  end

  # GET /shirts/1
  # GET /shirts/1.json
  def show
    render json: @shirt
  end

  # POST /shirts
  # POST /shirts.json
  def create
    @shirt = Shirt.new(shirt_params)

    if @shirt.save
      render json: @shirt, status: :created, location: @shirt
    else
      render json: @shirt.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shirts/1
  # PATCH/PUT /shirts/1.json
  def update
    @shirt = Shirt.find(params[:id])

    if @shirt.update(shirt_params)
      head :no_content
    else
      render json: @shirt.errors, status: :unprocessable_entity
    end
  end

  # DELETE /shirts/1
  # DELETE /shirts/1.json
  def destroy
    @shirt.destroy

    head :no_content
  end

  private

    def set_shirt
      @shirt = Shirt.find(params[:id])
    end

    def shirt_params
      params.require(:shirt).permit(:top_name, :brand, :color, :pattern, :sleeves, :tags)
    end
end
