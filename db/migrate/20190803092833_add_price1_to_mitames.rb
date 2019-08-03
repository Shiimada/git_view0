class AddPrice1ToMitames < ActiveRecord::Migration[5.2]
  def change
    add_column :mitames, :price1, :integer
  end
end
