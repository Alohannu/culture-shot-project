class AddTextToQuotes < ActiveRecord::Migration[6.1]
  def change
    add_column :quotes, :text, :text
  end
end
