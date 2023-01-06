class AddToContract < ActiveRecord::Migration
  def change
    add_column :contracts, :number_contract, :varchar
    add_column :contracts, :date_signing, :date
    add_column :contracts, :expiration_date, :date
    add_column :contracts, :direction_number, :varchar
    add_column :contracts, :direction_date, :date
    add_column :contracts, :arrival_date, :date

  end
end
