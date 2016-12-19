class LoginpageController < ApplicationController
  before_action :authenticate_user!
  def index
   @yearusages = YearUsage.all
  end

 

  def show
  end

  def dynamicreports
    
  end

  def sourcereports 	
    @source_reports = SourceReportsMapping.all
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
    
    # @platid = PlatformReport.select("MIN(id) as id").group(:platform_id).collect(&:id)
    @platforms = PlatformReport.find_by_sql("SELECT platform_id,GROUP_CONCAT(report_id) AS reports FROM platform_reports GROUP BY platform_id")
   
    @repo = [ 1,3,4,5,6,2,7,8,9,10  
    ]

    # @previous = PlatformReport.all
  end
end
