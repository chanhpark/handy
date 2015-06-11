class ChangeTeeRatingToFloat < ActiveRecord::Migration
  def change
    change_column :tees, :rating, :integer
  end
end
