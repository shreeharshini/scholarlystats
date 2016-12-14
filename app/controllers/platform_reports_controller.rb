class PlatformReportsController < ApplicationController
  before_action :set_platform_report, only: [:show, :edit, :update, :destroy]

  # GET /platform_reports
  # GET /platform_reports.json
  def index
    @platform_reports = PlatformReport.all
  end

  # GET /platform_reports/1
  # GET /platform_reports/1.json
  def show
  end

  # GET /platform_reports/new
  def new
    @platform_report = PlatformReport.new
  end

  # GET /platform_reports/1/edit
  def edit
  end

  # POST /platform_reports
  # POST /platform_reports.json
  def create
    @platform_report = PlatformReport.new(platform_report_params)

    respond_to do |format|
      if @platform_report.save
        format.html { redirect_to @platform_report, notice: 'Platform report was successfully created.' }
        format.json { render :show, status: :created, location: @platform_report }
      else
        format.html { render :new }
        format.json { render json: @platform_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /platform_reports/1
  # PATCH/PUT /platform_reports/1.json
  def update
    respond_to do |format|
      if @platform_report.update(platform_report_params)
        format.html { redirect_to @platform_report, notice: 'Platform report was successfully updated.' }
        format.json { render :show, status: :ok, location: @platform_report }
      else
        format.html { render :edit }
        format.json { render json: @platform_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /platform_reports/1
  # DELETE /platform_reports/1.json
  def destroy
    @platform_report.destroy
    respond_to do |format|
      format.html { redirect_to platform_reports_url, notice: 'Platform report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_platform_report
      @platform_report = PlatformReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def platform_report_params
      params.require(:platform_report).permit(:platform_id, :report_id)
    end
end
