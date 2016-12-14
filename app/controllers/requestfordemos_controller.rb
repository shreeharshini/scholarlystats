class RequestfordemosController < ApplicationController
  before_action :set_requestfordemo, only: [:show, :edit, :update, :destroy]

  # GET /requestfordemos
  # GET /requestfordemos.json
  def index
    @requestfordemos = Requestfordemo.all
  end

  # GET /requestfordemos/1
  # GET /requestfordemos/1.json
  def show
  end

  # GET /requestfordemos/new
  def new
    @requestfordemo = Requestfordemo.new
  end

  # GET /requestfordemos/1/edit
  def edit
  end

  # POST /requestfordemos
  # POST /requestfordemos.json
  def create
    @requestfordemo = Requestfordemo.new(requestfordemo_params)

    respond_to do |format|
      if @requestfordemo.save

       RequestfordemoMailer.welcome_email(@requestfordemo).deliver

        format.html { redirect_to @requestfordemo, notice: 'Requestfordemo was successfully created.' }
        format.json { render :show, status: :created, location: @requestfordemo }
      else
        format.html { render :new }
        format.json { render json: @requestfordemo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requestfordemos/1
  # PATCH/PUT /requestfordemos/1.json
  def update
    respond_to do |format|
      if @requestfordemo.update(requestfordemo_params)
        format.html { redirect_to @requestfordemo, notice: 'Requestfordemo was successfully updated.' }
        format.json { render :show, status: :ok, location: @requestfordemo }
      else
        format.html { render :edit }
        format.json { render json: @requestfordemo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requestfordemos/1
  # DELETE /requestfordemos/1.json
  def destroy
    @requestfordemo.destroy
    respond_to do |format|
      format.html { redirect_to requestfordemos_url, notice: 'Requestfordemo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requestfordemo
      @requestfordemo = Requestfordemo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def requestfordemo_params
      params.require(:requestfordemo).permit(:username, :email, :library, :number, :message)
    end
end
