class ReportsController < ApplicationController
  def index
    @reports = Report.all
     respond_to do |format|
          format.html
          #used to enable download in  excel
          format.xlsx

        end
  end

  def show
  end

  def new
  end

  def create
  end

  def destroy
  end
end
