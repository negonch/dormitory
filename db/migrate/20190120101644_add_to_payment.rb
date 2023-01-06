class AddToPayment < ActiveRecord::Migration
  def change
    add_column :payments, :check_number, :integer
    add_column :payments, :date_payment, :date
    add_column :payments, :month_payment, :string
    add_column :payments, :sum, :numeric

  end
end
