class CreateUserGroups < ActiveRecord::Migration
  def up
    create_table :user_groups do |t|
      t.belongs_to :user, :null => false
      t.belongs_to :group, :null => false
      t.timestamps
    end
  end

  def down
  end
end