class CreateAppellations < ActiveRecord::Migration
  def change
    create_table :appellations do |t|
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end
end
