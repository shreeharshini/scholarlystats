class LoginpageController < ApplicationController
  before_action :authenticate_user!

  def index
   @yearusages = YearUsage.all
  end

  def getreports
    sourcereports1 = SourceReportsMapping.where(:year => params[:sourcereports1]).pluck(:report_id)
      binding.pry
      respond_to do |format|
          format.html
          format.json {render json: sourcereports1.to_json}
        end
  end

  def test2
    @dynamic_reports = params[:some_parameter].constantize.all
    binding.pry
    respond_to do |format|
    format.js {}
    end
  end
  



  def show
  end

 

  def getyear
       sourcereportsyear = SourceReportsMapping.where(:platform_id => params[:sourcereportsyear]).pluck(:year)
        respond_to do |format|
          format.html
          format.json {render json: sourcereportsyear.to_json}
        end
    end

  def sourcereports 	
    @source_reports = SourceReportsMapping.find_by_sql("SELECT platform_id,GROUP_CONCAT(year) AS years FROM source_reports_mappings GROUP BY platform_id")
    @reports = Report.all
    @platforms = Platform.all
  end

  def accessdetails
     @platforms = Platform.all
  end

  def report
  end

  def selectedplatforms
    
    user_id = current_user.id
    @accounts = Account.where(:id => user_id ).first
    @platforms = PlatformReport.find_by_sql("SELECT platform_id,GROUP_CONCAT(report_id) AS reports FROM platform_reports GROUP BY platform_id")
    @repo = [ 1,2,3,4,5,6,7,8,9,10]

  end
end
