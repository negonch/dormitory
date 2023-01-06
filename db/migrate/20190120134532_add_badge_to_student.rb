class AddBadgeToStudent < ActiveRecord::Migration
  def change
    add_reference :students, :badge, index: true, foreign_key: true
  end
end
