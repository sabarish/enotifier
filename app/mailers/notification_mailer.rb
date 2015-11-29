class NotificationMailer < ActionMailer::Base
 
  default from: 'sabarishsankar89@gmail.com'
 
  def daily_notification(group)
    @group = group
    mail(to: @group.email, subject: "Welcome!")
  end
end