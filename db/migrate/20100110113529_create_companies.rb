class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string :name,					:null => false
      t.references :address,	:null => false
      t.string :vatid
      t.references :account,	:null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :companies
  end
end
