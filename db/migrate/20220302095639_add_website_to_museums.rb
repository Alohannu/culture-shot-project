class AddWebsiteToMuseums < ActiveRecord::Migration[6.1]
  def change
    add_column :museums, :website, :string
  end
end
