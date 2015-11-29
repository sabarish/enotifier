class User < ActiveRecord::Base

  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true

  def name
    "#{self.first_name} #{self.last_name}"
  end
end