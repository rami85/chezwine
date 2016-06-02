class AddWineCellToWines < ActiveRecord::Migration
  def change
    add_column :wines, :wine_cell, :string
  end
end
