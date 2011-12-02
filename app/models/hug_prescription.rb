class HugPrescription < ActiveRecord::Base
  attr_accessible :title, :release_date, :recipient_email
  belongs_to :user
end
