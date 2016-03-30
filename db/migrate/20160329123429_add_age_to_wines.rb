class AddAgeToWines < ActiveRecord::Migration
  def change
    add_column :wines, :age, :integer
  end
end
