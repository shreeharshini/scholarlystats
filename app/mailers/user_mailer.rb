class UserMailer < ApplicationMailer
default from: "mpsscholarlystats@gmail.com"

	def welcome_email(contactu)
	 @contact_u = contactu
	  mail(to: @contact_u.email, subject: 'Welcome to My Awesome Site')
	end
end
