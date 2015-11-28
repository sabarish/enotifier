class User < ActiveRecord::Base

  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true

  def self.fetch_users_with_notifications
    birthdays = []
    weddings = []
    User.all.each do |user|
      if user.birth_date == Date.today
        birthdays << user
      end
      if user.wedding_date == Date.today
        weddings << user
      end
    end
    [birthdays, weddings]
  end
end