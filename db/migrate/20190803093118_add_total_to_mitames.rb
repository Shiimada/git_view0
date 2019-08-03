class AddTotalToMitames < ActiveRecord::Migration[5.2]
  def change
    add_column :mitames, :total, :integer
  end
end
