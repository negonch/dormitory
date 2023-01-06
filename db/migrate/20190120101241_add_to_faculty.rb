class AddToFaculty < ActiveRecord::Migration
  def change
    add_column :faculties, :faculty_name, :string

  end
end
