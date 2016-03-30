class ChangeDecimalFormatInWines < ActiveRecord::Migration
  def up
   change_column :wines, :bottle_price, :decimal, :precision => 10, :scale => 2
   change_column :wines, :glass_price, :decimal, :precision => 10, :scale => 2
  end

  def down
   change_column :wines, :bottle_price, :decimal
   change_column :wines, :glass_price, :decimal
  end
end
