class AddLogoToAppellations < ActiveRecord::Migration
  def change
    add_column :appellations, :logo, :string
  end
end
