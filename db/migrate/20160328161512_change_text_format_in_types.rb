class ChangeTextFormatInTypes < ActiveRecord::Migration
  def up
   change_column :types, :name, :string
  end

  def down
   change_column :types, :name, :text
  end
end
