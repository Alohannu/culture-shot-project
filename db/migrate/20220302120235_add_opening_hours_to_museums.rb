class AddOpeningHoursToMuseums < ActiveRecord::Migration[6.1]
  def change
    add_column :museums, :opening_hours, :string
  end
end
