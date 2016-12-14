class ExportFilesController < ApplicationController
  def index
  end

  def csv
    send_file Rails.root.join('files_for_download', 'COUNTER_Journal_Report_1_-_Article_Requests.csv'), :type=>"application/csv", :x_sendfile=>true
  end

  def xlsx
    send_file Rails.root.join('files_for_download', 'recent_report_collection_status.xlsx'), :type=>"application/xlsx", :x_sendfile=>true
  end

  def zip
    send_file Rails.root.join('files_for_download', 'COUNTER_Journal_Report_1_-_Article_Requests.zip'), :type=>"application/zip", :x_sendfile=>true
  end
end
