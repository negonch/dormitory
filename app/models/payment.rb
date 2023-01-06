class Payment < ActiveRecord::Base

  belongs_to :student

  validates :date_payment, :month_payment, :sum, presence: true

end
