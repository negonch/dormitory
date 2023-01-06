class Room < ActiveRecord::Base

  has_many :students

  validates :room_number, :number_persons, presence: true
  validates :room_number, uniqueness: true

end
