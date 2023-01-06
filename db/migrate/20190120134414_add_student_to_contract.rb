class AddStudentToContract < ActiveRecord::Migration
  def change
    add_reference :contracts, :student, index: true, foreign_key: true
  end
end
