class ShoesController < ApplicationController
  before_action :set_shoe, only: [:show, :update, :destroy]

  # GET /shoes
  # GET /shoes.json
  def index
    @shoes = Shoe.all

    render json: @shoes
  end

  # GET /shoes/1
  # GET /shoes/1.json
  def show
    render json: @shoe
  end

  # POST /shoes
  # POST /shoes.json
  def create
    @shoe = Shoe.new(shoe_params)

    if @shoe.save
      render json: @shoe, status: :created, location: @shoe
    else
      render json: @shoe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shoes/1
  # PATCH/PUT /shoes/1.json
  def update
    @shoe = Shoe.find(params[:id])

    if @shoe.update(shoe_params)
      head :no_content
    else
      render json: @shoe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /shoes/1
  # DELETE /shoes/1.json
  def destroy
    @shoe.destroy

    head :no_content
  end

  private

    def set_shoe
      @shoe = Shoe.find(params[:id])
    end

    def shoe_params
      params.require(:shoe).permit(:name, :description, :image)
    end
end
