class Group < ActiveRecord::Base
  
  validates :name, :email, presence: true, uniqueness: true
  has_many :user_groups, foreign_key: "group_id", dependent: :destroy
  has_many :users, through: :user_groups
  belongs_to :user

  def fetch_users_with_notifications_for_date(date = Date.today)
    birthdays = []
    weddings = []
    office_anniversaries = []
    self.users.each do |user|      
      birthdays << user if user.birth_date.present? && user.birth_date.day == date.day && user.birth_date.month == date.month
      weddings << user if user.wedding_date.present? && user.wedding_date.day == date.day && user.wedding_date.month == date.month
      office_anniversaries << user if user.joining_date.present? && user.joining_date.day == date.day && user.joining_date.month == date.month
    end
    [birthdays, weddings, office_anniversaries]
  end

  def self.send_daily_notifications
    Group.all.each do |group|      
      NotificationMailer.daily_notification(group).deliver
    end
  end
end