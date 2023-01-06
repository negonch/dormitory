class Guest < ActiveRecord::Base

  belongs_to :student

  validates :surname, :name, :arrival_date, presence: true

end
