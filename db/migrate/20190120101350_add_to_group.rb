class AddToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :course_number, :integer

  end
end
