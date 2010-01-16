class CreateBills < ActiveRecord::Migration
  def self.up
    create_table :bills do |t|
      t.references :offer,					:null => false
      t.string :bill_number,				:null => false
      t.references :transaction

      t.timestamps
    end
  end

  def self.down
    drop_table :bills
  end
end
