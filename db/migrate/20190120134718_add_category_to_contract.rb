class AddCategoryToContract < ActiveRecord::Migration
  def change
    add_reference :contracts, :category, index: true, foreign_key: true
  end
end
