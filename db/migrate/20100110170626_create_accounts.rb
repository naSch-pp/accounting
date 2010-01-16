class CreateAccounts < ActiveRecord::Migration
  def self.up
    create_table :accounts do |t|
      t.integer :account_number,	:null => false
      t.string :iban
      t.string :bank_code
      t.string :bic

      t.timestamps
    end
  end

  def self.down
    drop_table :accounts
  end
end
