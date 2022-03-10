class AddChineseToQuotes < ActiveRecord::Migration[6.1]
  def change
    add_column :quotes, :chinese, :text
  end
end
