class AdditionalUsersController < ApplicationController
  before_action :set_additional_user, only: [:show, :edit, :update, :destroy]

  # GET /additional_users
  # GET /additional_users.json
  def index
    @additional_users = AdditionalUser.all
  end

  # GET /additional_users/1
  # GET /additional_users/1.json
  def show
  end

  # GET /additional_users/new
  def new
    @additional_user = AdditionalUser.new
  end

  # GET /additional_users/1/edit
  def edit
  end

  # POST /additional_users
  # POST /additional_users.json
  def create
    @additional_user = AdditionalUser.new(additional_user_params)

    respond_to do |format|
      if @additional_user.save
        format.html { redirect_to @additional_user, notice: 'Additional user was successfully created.' }
        format.json { render :show, status: :created, location: @additional_user }
      else
        format.html { render :new }
        format.json { render json: @additional_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /additional_users/1
  # PATCH/PUT /additional_users/1.json
  def update
    respond_to do |format|
      if @additional_user.update(additional_user_params)
        format.html { redirect_to @additional_user, notice: 'Additional user was successfully updated.' }
        format.json { render :show, status: :ok, location: @additional_user }
      else
        format.html { render :edit }
        format.json { render json: @additional_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /additional_users/1
  # DELETE /additional_users/1.json
  def destroy
    @additional_user.destroy
    respond_to do |format|
      format.html { redirect_to additional_users_url, notice: 'Additional user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_additional_user
      @additional_user = AdditionalUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def additional_user_params
      params.require(:additional_user).permit(:first_name, :last_name, :email, :password, :role)
    end
end
