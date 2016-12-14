class AccountPlatform < ActiveRecord::Base
	belongs_to :account
	belongs_to :platform
end
