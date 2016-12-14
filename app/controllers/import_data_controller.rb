class ImportDataController < ApplicationController
 
	#after_action :redirect_to_back, only: [:xlsx]
	def index
    @import_data = ImportData.all
	end
	def show
    render 'index'
	end
	def new
    @import_data = ImportData.new
  end
  def create
    @import_data = ImportData.new(import_data_params)
    @import_data.user_id = current_user.id
    if @import_data.save
      redirect_to import_data_path, notice: "The file has been uploaded."
    else
      render "new"
    end
  end

	def xlsx
    send_file Rails.root.join('files_for_download', 'recent_report_collection_status.xlsx'), :type=>"application/xlsx", :x_sendfile=>true
	end

  private
  def import_data_params
    params.require(:import_data).permit(:attachment, :user_id)
  end
  
end
