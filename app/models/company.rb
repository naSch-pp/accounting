class Company < ActiveRecord::Base
  belongs_to :address
  belongs_to :account
end
