class CreateWineGrapes < ActiveRecord::Migration
  def change
    create_table :wine_grapes do |t|
      t.references :wine, index: true
      t.references :grape_type, index: true

      t.timestamps
    end
  end
end
