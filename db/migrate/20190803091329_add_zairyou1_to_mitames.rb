class AddZairyou1ToMitames < ActiveRecord::Migration[5.2]
  def change
    add_column :mitames, :zairyou1, :text
  end
end
