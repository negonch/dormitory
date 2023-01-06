class Group < ActiveRecord::Base

  has_many :students
  belongs_to :faculty

  validates :course_number, presence: true

end
