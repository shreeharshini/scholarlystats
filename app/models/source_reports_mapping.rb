class SourceReportsMapping < ActiveRecord::Base
	belongs_to :account
	belongs_to :platform
	belongs_to :report
end
