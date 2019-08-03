class AddPrice2ToMitames < ActiveRecord::Migration[5.2]
  def change
    add_column :mitames, :price2, :integer
  end
end
