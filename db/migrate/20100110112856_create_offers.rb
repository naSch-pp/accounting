class CreateOffers < ActiveRecord::Migration
  def self.up
    create_table :offers do |t|
      t.integer :number,			:null => false
      t.text :content,					:null => false
      t.text :addition
      t.integer :taxrate
      t.references :customer, :null => false
			t.references :user,			:null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :offers
  end
end
