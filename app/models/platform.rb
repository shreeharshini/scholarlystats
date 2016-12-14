class Platform < ApplicationRecord
	has_many :source_reports_mappings
	has_many :reports, :through => :source_reports_mappings
	has_many :accounts, :through => :source_reports_mappings
	has_many :platform_reports
	has_many :reports, :through => :platform_reports
end
