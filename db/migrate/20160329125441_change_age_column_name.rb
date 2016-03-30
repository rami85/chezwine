class ChangeAgeColumnName < ActiveRecord::Migration
  def change
  	rename_column :wines, :age, :age_id
  end
end
