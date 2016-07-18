class AddElaborationToWines < ActiveRecord::Migration
  def change
    add_column :wines, :elaboration, :text
  end
end
