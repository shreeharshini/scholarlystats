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
    
    @platid = PlatformReport.select("MIN(id) as id").group(:platform_id).collect(&:id)
    @platforms = PlatformReport.where("id  IN (?)",@platid)
   
    @repo = ["jr1","jr1a","jr2","jr3","jr5", "db1","db2","pr1","br1","br2"   
    ]

    # @previous = PlatformReport.all
  end
end
