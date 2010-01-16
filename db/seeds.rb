# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
User.create(:login => 'patrick.heneise', :name => 'Patrick', :surname => 'Heneise', :password => 'fool7', :password_confirmation => 'fool7', :is_admin => true, :email => 'patrick.heneise@nachtschicht-gbr.de')
ad = Address.create(:street => "Musterstr. 1", :postcode => "12345", :city => "Musterstadt")
ac = Account.create(:account_number => "12345", :bank_code => "12345")
muster = Company.create(:name => "Muster GmbH", :address => ad, :vatid => "DE12345", :account => ac)
cus = Customer.create(:name => "Thomas", :surname => "Mustermann", :title => "Herr", :company => muster)
s = Setting.create(:offer_provision => 15, :company => muster, :vat => 19)