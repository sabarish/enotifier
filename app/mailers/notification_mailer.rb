class NotificationMailer < ActionMailer::Base
 
  default from: 'groups.enotifier@gmail.com'
 
  def daily_notification(group)
    @group = group
    @notifications = @group.fetch_users_with_notifications_for_date
    @birthdays = @notifications[0]
    @weddings = @notifications[1]
    @office_anniversaries = @notifications[2]
    subject = []
    subject << "Happy Birthday" if @birthdays.present?
    subject << "Happy Wedding Day" if @weddings.present?
    subject << "Happy Office Anniversary" if @office_anniversaries.present?
    mail(from: "#{@group.name} <groups.enotifier@gmail.com>", to: @group.email, subject: "#{subject.to_sentence}!") if @notifications.flatten.present?
  end
end