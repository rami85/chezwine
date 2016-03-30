class CreateGrapeTypes < ActiveRecord::Migration
  def change
    create_table :grape_types do |t|
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end
end
