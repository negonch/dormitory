class AddToStudent < ActiveRecord::Migration
  def change
    add_column :students, :surname, :string
    add_column :students, :name, :string
    add_column :students, :patronymic, :string
    add_column :students, :date_birth, :date
    add_column :students, :country_residense, :string
    add_column :students, :citizenchip, :string
    add_column :students, :passport, :varchar
    add_column :students, :address, :varchar
    add_column :students, :phone_number, :numeric

  end
end
