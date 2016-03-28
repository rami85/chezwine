class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.text :name
      t.boolean :active

      t.timestamps
    end
  end
end
