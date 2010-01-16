class CreateSettings < ActiveRecord::Migration
  def self.up
    create_table :settings do |t|
      t.float :offer_provision
      t.reference :company
      t.float :vat
			t.float :share_rate

      t.timestamps
    end
  end

  def self.down
    drop_table :settings
  end
end
