class SourceReportsMappingsController < ApplicationController
  def index
    binding.pry
  	@source_reports = SourceReportsMapping.all
  end

  def new
    # binding.pry
  	@source_report = SourceReportsMapping.new
  end

  def create
    binding.pry
  	@source_report = SourceReportsMapping.new(source_report_params)
  	if @source_report.save
  		redirect_to loginpage_index_path
  	else
  		render 'new'
    end
  end

  def show
  end

  
  def destroy 
    @source_report.destroy
    redirect_to loginpage_index_path    
  end
 private 
 def source_report_params
 	params.require(:source_reports_mapping).permit(:report_id, :platform_id, :month, :year, :account_id)
 end
end
