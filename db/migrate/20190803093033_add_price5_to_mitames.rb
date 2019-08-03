class AddPrice5ToMitames < ActiveRecord::Migration[5.2]
  def change
    add_column :mitames, :price5, :integer
  end
end
