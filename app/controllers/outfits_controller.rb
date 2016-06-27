class OutfitsController < ApplicationController
  before_action :set_outfit, only: [:show, :update, :destroy]
  before_action :authenticate, only: [:update, :create, :destroy]

  # GET /outfits
  # GET /outfits.json
  def index
    @outfits = Outfit.all

    render json: @outfits
  end

  # GET /outfits/1
  # GET /outfits/1.json
  def show
    render json: @outfit
  end

  # POST /outfits
  # POST /outfits.json
  def create
    @outfit = Outfit.new(outfit_params)

    if @outfit.save
      render json: @outfit, status: :created, location: @outfit
    else
      render json: @outfit.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /outfits/1
  # PATCH/PUT /outfits/1.json
  def update
    @outfit = Outfit.find(params[:id])

    if @outfit.update(outfit_params)
      head :no_content
    else
      render json: @outfit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /outfits/1
  # DELETE /outfits/1.json
  def destroy
    @outfit.destroy

    head :no_content
  end

  private

    def set_outfit
      @outfit = Outfit.find(params[:id])
    end

    def outfit_params
      params.require(:outfit).permit(:date_wear, :description, :shirt_id, :bottom_id, :accessory_id, :shoe_id, :profile_id)
    end
end
