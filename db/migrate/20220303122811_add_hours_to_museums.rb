class AddHoursToMuseums < ActiveRecord::Migration[6.1]
  def change
    add_column :museums, :hours, :text
  end
end
