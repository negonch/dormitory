class AddSexToStudent < ActiveRecord::Migration
  def change
    add_reference :students, :sex, index: true, foreign_key: true
  end
end
