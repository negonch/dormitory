class AddToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :room_number, :integer
    add_column :rooms, :number_persons, :integer
    add_column :rooms, :comment, :string

  end
end
