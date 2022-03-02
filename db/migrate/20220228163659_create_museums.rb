class CreateMuseums < ActiveRecord::Migration[6.1]
  def change
    create_table :museums do |t|
      t.string :name
      t.string :address
      t.time :open_start
      t.time :open_end
      t.text :description

      t.timestamps
    end
  end
end
