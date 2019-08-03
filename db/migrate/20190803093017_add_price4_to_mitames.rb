class AddPrice4ToMitames < ActiveRecord::Migration[5.2]
  def change
    add_column :mitames, :price4, :integer
  end
end
