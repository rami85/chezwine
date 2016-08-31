class ChangeActiveInWine < ActiveRecord::Migration
  def change
  	change_column_default(:wines, :active, true)
  end
end
