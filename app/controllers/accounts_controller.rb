class AccountsController < ApplicationController
  before_action :authenticate_user!
  def index
    @accounts = Account.all
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.new(accounts_params)
    if @account.save
      redirect_to accounts_path
    else
      render 'new'
    end
  end

  def show
  end

  def destroy
    @account.destroy
    redirect_to accounts_path
  end

  def update
  end
  private
  def accounts_params
    params.require(:accounts).permit(:name, :month, :created_by, :updated_by, 
      :contract_sign_on, :number_of_platforms, :activation_status, :account_code,
       :user_id)
    
  end
end
