class CreateGroups < ActiveRecord::Migration
  def up
    create_table :groups do |t|
      t.string :name, :null => false
      t.text :description
      t.belongs_to :user, :null => false
      t.timestamps
    end
  end

  def down
  end
end