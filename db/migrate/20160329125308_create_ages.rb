class CreateAges < ActiveRecord::Migration
  def change
    create_table :ages do |t|
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end
end
