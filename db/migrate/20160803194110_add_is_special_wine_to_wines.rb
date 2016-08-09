class AddIsSpecialWineToWines < ActiveRecord::Migration
  def change
    add_column :wines, :is_special_wine, :boolean
  end
end
