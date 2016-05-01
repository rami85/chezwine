class ChangeBottlePriceName < ActiveRecord::Migration
  def change
  	rename_column :wines, :bottle_price, :bottle_500_price
  end
end
