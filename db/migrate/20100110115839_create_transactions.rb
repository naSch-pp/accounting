class CreateTransactions < ActiveRecord::Migration
  def self.up
    create_table :transactions do |t|
      t.references :origin_account,					:null => false
      t.references :target_account,					:null => false
      t.date :valuta,												:null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :transactions
  end
end
