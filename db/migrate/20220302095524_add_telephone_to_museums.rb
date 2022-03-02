class AddTelephoneToMuseums < ActiveRecord::Migration[6.1]
  def change
    add_column :museums, :telephone, :string
  end
end
