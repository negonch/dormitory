class AddFacultyToGroup < ActiveRecord::Migration
  def change
    add_reference :groups, :faculty, index: true, foreign_key: true
  end
end
