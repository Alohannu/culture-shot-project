class AddTicketUrlToMuseums < ActiveRecord::Migration[6.1]
  def change
    add_column :museums, :ticket_url, :string
  end
end
