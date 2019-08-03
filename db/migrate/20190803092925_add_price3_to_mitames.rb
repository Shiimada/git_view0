class AddPrice3ToMitames < ActiveRecord::Migration[5.2]
  def change
    add_column :mitames, :price3, :integer
  end
end
