class Group < ActiveRecord::Base
  
  validates :name, presence: true, uniqueness: true
  has_many :user_groups, foreign_key: "group_id", dependent: :destroy
  has_many :users, through: :user_groups
  belongs_to :user

  def fetch_users_with_notifications_for_date(date = Date.today)
    birthdays = []
    weddings = []
    office_anniversaries = []
    self.users.each do |user|      
      birthdays << user if user.birth_date == date
      weddings << user if user.wedding_date == date
      office_anniversaries << user if user.joining_date == date
    end
    [birthdays, weddings, office_anniversaries]
  end
end