class AddToGuest < ActiveRecord::Migration
  def change
    add_column :guests, :surname, :string
    add_column :guests, :name, :string
    add_column :guests, :patronymic, :string
    add_column :guests, :arrival_date, :date
    add_column :guests, :departure_date, :date

  end
end
