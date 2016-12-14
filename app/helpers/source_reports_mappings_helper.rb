module SourceReportsMappingsHelper
	def getreports
		Report.all.collect{|c| [c.name , c.id]}	
	end	
	def getplatforms
		Platform.all.collect { |p| [ p.name, p.id] }
	end
	def getaccounts
		Account.all.map { |p| [ p.name, p.id ] }
	end
end
