class CreateMuseumsTopics < ActiveRecord::Migration[6.1]
  def change
    create_table :museums_topics do |t|
      t.references :museum, null: false, foreign_key: true
      t.references :topic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
