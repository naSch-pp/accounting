class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :name,					:null => false
      t.string :surname,			:null => false
      t.string :title
      t.string :phone
      t.references :company

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
