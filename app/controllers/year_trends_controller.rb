class YearTrendsController < ApplicationController
  def index
  	@topjournals = YearTopJournal.all
  	byebug
  	 @yearusages = YearUsage.find_by_sql("SELECT Report_Type, SUM(YTD) as abc FROM year_usages GROUP BY Report_Type")
	@topjournals.each do |f|
		test1 = f.institution_code
	 	res = LibraryCodeMapping.where(:Old_Code => test1)
	end
  end

def pie_charts_for_yearusages
   @this_usage = YearUsage.find(1)
   @abc = YearUsage.last
  end

  def show
  	     # @this_usage = YearUsage.find(1)

  	render 'pie_charts_for_yearusages'
  end
end
