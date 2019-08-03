class AddZairyou2ToMitames < ActiveRecord::Migration[5.2]
  def change
    add_column :mitames, :zairyou2, :text
  end
end
