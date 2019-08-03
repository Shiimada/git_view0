class AddZairyou5ToMitames < ActiveRecord::Migration[5.2]
  def change
    add_column :mitames, :zairyou5, :text
  end
end
