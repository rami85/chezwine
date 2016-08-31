class AddActiveToWine < ActiveRecord::Migration
  def change
    add_column :wines, :active, :boolean
  end
end
