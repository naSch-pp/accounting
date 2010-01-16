class Bill < ActiveRecord::Base
  belongs_to :offer
  belongs_to :transaction
end
