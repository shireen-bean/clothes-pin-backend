class ProfilesController < ProtectedController
  before_action :set_profile, only: [:show, :update, :destroy]
  # before_action :authenticate

  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all

    render json: @profiles
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    render json: @profile
  end

  # POST /profiles
  # POST /profiles.json
  def create
      # @profile = Profile.new(user_id: current_user)
    @profile = Profile.new(profile_params)

    if @profile.save
      render json: @profile, status: :created, location: @profile
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    @profile = Profile.find(params[:id])

    if @profile.update(profile_params)
      head :no_content
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy

    head :no_content
  end

  private

    def set_profile
      @profile = Profile.find(params[:id])
    end

    def profile_params
      params.require(:profile).permit(:given_name, :surname, :gender, :description, :picture, :user_id)
    end

    def query_string_authenticate
      token = params[:token]
      @current_user = User.find_by token: token
      head :unauthorized unless current_user
    end
end
