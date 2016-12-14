module LoginpageHelper
def test1
	@box = PlatformReport.where(:platform_id => 1).first
end


end

													