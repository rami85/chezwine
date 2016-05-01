class AddBottle750PriceToWine < ActiveRecord::Migration
  def change
  	add_column :wines, :bottle_750_price, :decimal, :precision => 10, :scale => 2
  end
end
