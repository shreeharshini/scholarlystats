class LoginpageController < ApplicationController
  before_action :authenticate_user!
  def index
   @yearusages = YearUsage.all
  end

 

  def show
  end

  def dynamicreports
   binding.pry
  end

  def test1
      binding.pry
       some_parameter = SourceReportsMapping.find(params[:some_parameter])
        @test=SourceReportsMapping.last
        binding.pry
        respond_to do |format|
          format.html
          format.json {render json: @test}
        end
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
    
    @platforms = PlatformReport.find_by_sql("SELECT platform_id,GROUP_CONCAT(report_id) AS reports FROM platform_reports GROUP BY platform_id")
   
    @repo = [ 1,2,3,4,5,6,7,8,9,10  
    ]

  end
end
