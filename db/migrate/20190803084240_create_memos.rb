class CreateMemos < ActiveRecord::Migration[5.2]
  def change
    create_table :memos do |t|
      t.integer :mitame_id
      t.text :text

      t.timestamps
    end
  end
end
