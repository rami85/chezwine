class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :name
      t.references :type, index: true
      t.references :appellation, index: true
      t.decimal :bottle_price
      t.decimal :glass_price
      t.text :color
      t.text :nose
      t.text :mouth
      t.string :logo

      t.timestamps
    end
  end
end
