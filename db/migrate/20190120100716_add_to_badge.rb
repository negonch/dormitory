class AddToBadge < ActiveRecord::Migration
  def change
    add_column :badges, :number, :integer
    add_column :badges, :date_issue, :date
    add_column :badges, :comment, :string
  end
end
