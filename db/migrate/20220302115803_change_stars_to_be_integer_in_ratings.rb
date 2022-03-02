class ChangeStarsToBeIntegerInRatings < ActiveRecord::Migration[6.1]
  def change
    change_column :ratings, :starts, :integer
  end
end
