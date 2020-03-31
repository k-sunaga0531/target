class CreateTargeters < ActiveRecord::Migration[5.0]
  def change
    create_table :targeters do |t|
      t.string :targeter_name, null: false
      t.integer :counts
      t.integer :user_id, null: false, foreign_key: true
      t.integer :group_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
