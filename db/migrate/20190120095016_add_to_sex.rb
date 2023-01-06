class AddToSex < ActiveRecord::Migration
  def change
    add_column :sexes, :sex_name, :string
  end
end
