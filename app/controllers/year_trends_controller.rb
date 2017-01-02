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
   @this_usage = YearUsage.find_by_sql("SELECT Report_Type, SUM(YTD) as abcd FROM year_usages GROUP BY Report_Type")
   
   # @abc = YearUsage.find_by_sql("SELECT Report_Type, SUM(YTD) as qwer FROM year_usages GROUP BY Report_Type").last
  end

  def show

  	render 'pie_charts_for_yearusages'
  end
end
