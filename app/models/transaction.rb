class Transaction < ActiveRecord::Base
  belongs_to :origin_account, :class_name => "Account"
  belongs_to :target_account, :class_name => "Account"
end
