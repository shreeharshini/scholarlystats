class Account < ApplicationRecord
	has_many :source_reports_mappings
	has_many :platforms, :through => :source_reports_mappings
	has_many :reports, :through => :source_reports_mappings
	has_many :users
	has_one :account_info
end
