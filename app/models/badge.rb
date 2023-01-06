class Badge < ActiveRecord::Base

  has_many :students

  validates :number, :date_issue, presence: true

end
