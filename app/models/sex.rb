class Sex < ActiveRecord::Base

  has_many :students

  validates :sex_name, presence: true
  validates :sex_name, uniqueness: true

end
