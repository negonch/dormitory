class AddRoomToStudent < ActiveRecord::Migration
  def change
    add_reference :students, :room, index: true, foreign_key: true
  end
end
