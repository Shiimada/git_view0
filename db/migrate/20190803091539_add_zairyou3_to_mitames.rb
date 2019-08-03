class AddZairyou3ToMitames < ActiveRecord::Migration[5.2]
  def change
    add_column :mitames, :zairyou3, :text
  end
end
