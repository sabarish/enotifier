desc "This task is to send daily notifications on events"
task :send_daily_notifications => :environment do
  puts "Sending Notifications ..."
  Group.send_daily_notifications
  puts "done."
end