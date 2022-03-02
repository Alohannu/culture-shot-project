class ChangeStarsToBeIntegerInRatings < ActiveRecord::Migration[6.1]
  def change
    change_column :ratings, :stars, :integer
  end
end
