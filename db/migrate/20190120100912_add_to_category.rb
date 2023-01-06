class AddToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :category_name, :string
    add_column :categories, :monthly_rate, :numeric
  end
end
