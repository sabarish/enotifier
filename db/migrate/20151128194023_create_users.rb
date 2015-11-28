class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :first_name, :null => false
      t.string :last_name
      t.string :email
      t.date :birth_date
      t.date :wedding_date
      t.boolean :is_admin
      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
