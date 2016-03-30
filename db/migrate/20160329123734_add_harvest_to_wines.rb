class AddHarvestToWines < ActiveRecord::Migration
  def change
    add_column :wines, :harvest, :integer
  end
end
