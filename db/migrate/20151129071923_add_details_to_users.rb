class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :current_organization, :string
    add_column :users, :current_position, :string
    add_column :users, :joining_date, :date
    add_column :users, :current_location, :text
    add_column :users, :contact_number, :string
  end
end