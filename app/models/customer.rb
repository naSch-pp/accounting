class Customer < ActiveRecord::Base
  belongs_to :company
	
	has_many :offers
	has_many :bills
	has_many :customers
end
