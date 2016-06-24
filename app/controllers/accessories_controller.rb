class AccessoriesController < ApplicationController
  before_action :set_accessory, only: [:show, :update, :destroy]

  # GET /accessories
  # GET /accessories.json
  def index
    @accessories = Accessory.all

    render json: @accessories
  end

  # GET /accessories/1
  # GET /accessories/1.json
  def show
    render json: @accessory
  end

  # POST /accessories
  # POST /accessories.json
  def create
    @accessory = Accessory.new(accessory_params)

    if @accessory.save
      render json: @accessory, status: :created, location: @accessory
    else
      render json: @accessory.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /accessories/1
  # PATCH/PUT /accessories/1.json
  def update
    @accessory = Accessory.find(params[:id])

    if @accessory.update(accessory_params)
      head :no_content
    else
      render json: @accessory.errors, status: :unprocessable_entity
    end
  end

  # DELETE /accessories/1
  # DELETE /accessories/1.json
  def destroy
    @accessory.destroy

    head :no_content
  end

  private

    def set_accessory
      @accessory = Accessory.find(params[:id])
    end

    def accessory_params
      params.require(:accessory).permit(:accessory_name, :brand, :color, :description, :tags, :image)
    end
end
