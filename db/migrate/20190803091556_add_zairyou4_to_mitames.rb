class AddZairyou4ToMitames < ActiveRecord::Migration[5.2]
  def change
    add_column :mitames, :zairyou4, :text
  end
end
