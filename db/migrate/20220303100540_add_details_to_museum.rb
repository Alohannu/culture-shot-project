class AddDetailsToMuseum < ActiveRecord::Migration[6.1]
  def change
    add_column :museums, :price_reduced, :float
    add_column :museums, :price_info, :string
  end
end
