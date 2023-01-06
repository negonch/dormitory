class Contract < ActiveRecord::Base

  belongs_to :student
  belongs_to :category

  validates :number_contract, :date_signing, presence: true

end
