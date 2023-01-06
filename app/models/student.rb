class Student < ActiveRecord::Base

  has_many :payments
  has_many :contracts
  has_many :guests
  belongs_to :group
  belongs_to :sex
  belongs_to :badge
  belongs_to :room
  validates :surname, :name, :date_birth, :country_residence, :citizenchip, :passport, :address, :phone_number, presence: true
  validates :passport, uniqueness: true

end
