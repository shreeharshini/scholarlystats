class YearTopJournalsController < ApplicationController
  def index
  	@yeartoptrends = YearTopJournal.all
  end

  def show
  end
end
