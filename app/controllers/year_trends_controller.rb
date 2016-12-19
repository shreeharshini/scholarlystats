class YearTrendsController < ApplicationController
  def index
  	@yeartrends = YearTrend.all
  	@yearusages = YearUsage.find_by_sql("SELECT Report_Type, SUM(YTD) FROM year_usages GROUP BY Report_Type")
  end

  def show
  end
end
