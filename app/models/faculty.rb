class Faculty < ActiveRecord::Base

  has_many :groups

  validates :faculty_name, presence: true

end
