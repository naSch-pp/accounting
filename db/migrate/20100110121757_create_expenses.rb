class CreateExpenses < ActiveRecord::Migration
  def self.up
    create_table :expenses do |t|
      t.string :name,					:null => false
      t.float :hours
      t.float :rate
      t.float :fixcosts
      t.string :remark,				:null => false
      t.references :offer,		:null => false
      t.references :user,			:null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :expenses
  end
end
