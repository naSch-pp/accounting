class User < ActiveRecord::Base
	acts_as_authentic
	belongs_to :company
	
	has_one :account
	has_many :expenses
	has_many :offers
end
