class AccountPlatformsController < ApplicationController
  before_action :authenticate_user!
  def index
  	binding.pry
  	@account_platforms = AccountPlatform.all
  end

  def new
  	binding.pry
  	@account_platform = AccountPlatform.new
  end

  def create
  	binding.pry
  	  	@account_platform = AccountPlatform.new(account_platform_params)
  	  	if @account_platform.save
  	  		redirect_to  account_platforms_path
  	  	else
  	  		render 'new'
  	  	end
  end

private

def account_platform_params
	params.require(:account_platform).permit(:account_id, :platform_id)
end
end
