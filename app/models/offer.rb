class Offer < ActiveRecord::Base
  belongs_to :customer
	belongs_to :lead, :class_name => "User", :foreign_key => "user_id"
	
	has_many :expenses
	
	accepts_nested_attributes_for :expenses, :allow_destroy => true
end
