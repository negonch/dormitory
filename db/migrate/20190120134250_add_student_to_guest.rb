class AddStudentToGuest < ActiveRecord::Migration
  def change
    add_reference :guests, :student, index: true, foreign_key: true
  end
end
