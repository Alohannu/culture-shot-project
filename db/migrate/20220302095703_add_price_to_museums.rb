class AddPriceToMuseums < ActiveRecord::Migration[6.1]
  def change
    add_column :museums, :price, :float
  end
end
