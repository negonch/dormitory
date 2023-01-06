class Category < ActiveRecord::Base

  has_many :contracts

  validates :category_name, presence: true

end
