class Account < ActiveRecord::Base
	has_many :incoming_transations, :class_name => "Transaction", :foreign_key => "origin_account"
	has_many :outgoing_transations, :class_name => "Transaction", :foreign_key => "target_account"
end
