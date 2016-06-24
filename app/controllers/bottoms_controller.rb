class BottomsController < ApplicationController
  before_action :set_bottom, only: [:show, :update, :destroy]

  # GET /bottoms
  # GET /bottoms.json
  def index
    @bottoms = Bottom.all

    render json: @bottoms
  end

  # GET /bottoms/1
  # GET /bottoms/1.json
  def show
    render json: @bottom
  end

  # POST /bottoms
  # POST /bottoms.json
  def create
    @bottom = Bottom.new(bottom_params)

    if @bottom.save
      render json: @bottom, status: :created, location: @bottom
    else
      render json: @bottom.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bottoms/1
  # PATCH/PUT /bottoms/1.json
  def update
    @bottom = Bottom.find(params[:id])

    if @bottom.update(bottom_params)
      head :no_content
    else
      render json: @bottom.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bottoms/1
  # DELETE /bottoms/1.json
  def destroy
    @bottom.destroy

    head :no_content
  end

  private

    def set_bottom
      @bottom = Bottom.find(params[:id])
    end

    def bottom_params
      params.require(:bottom).permit(:bottom_name, :brand, :color, :business, :length, :type)
    end
end
