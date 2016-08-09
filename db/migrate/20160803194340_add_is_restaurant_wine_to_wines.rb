class AddIsRestaurantWineToWines < ActiveRecord::Migration
  def change
    add_column :wines, :is_restaurant_wine, :boolean
  end
end
