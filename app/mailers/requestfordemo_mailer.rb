class RequestfordemoMailer < ApplicationMailer
default from: "mpsscholarlystats@gmail.com"

	def welcome_email(requestfordemo)
	 @requestfordemo = requestfordemo
	  mail(to: @requestfordemo.email, subject: 'Welcome to My Awesome Site')
	end
end
