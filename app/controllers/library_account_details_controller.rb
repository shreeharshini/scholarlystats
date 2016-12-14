class LibraryAccountDetailsController < ApplicationController
  	before_action :authenticate_user!
	def index
		user_id = current_user.id
		u = User.where(:id =>user_id).first
		@acct_details = u.account
		@acct_info = u.account_info
  	end

  def show
  	render 'index'
  end
end
