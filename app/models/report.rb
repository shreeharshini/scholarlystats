class Report < ApplicationRecord
	has_many :source_reports_mappings
	has_many :platforms, :through => :source_reports_mappings
	has_many :accounts, :through => :source_reports_mappings
	has_many :platform_reports
	has_many :platforms, :through => :platform_reports
end
