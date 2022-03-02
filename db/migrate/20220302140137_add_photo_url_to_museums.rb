class AddPhotoUrlToMuseums < ActiveRecord::Migration[6.1]
  def change
    add_column :museums, :photo_url, :string
  end
end
