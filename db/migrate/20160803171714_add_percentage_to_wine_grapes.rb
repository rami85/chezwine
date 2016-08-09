class AddPercentageToWineGrapes < ActiveRecord::Migration
  def change
    add_column :wine_grapes, :percentage, :integer
  end
end
