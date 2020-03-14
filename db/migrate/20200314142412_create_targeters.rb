class CreateTargeters < ActiveRecord::Migration[5.0]
  def change
    create_table :targeters do |t|
      t.text :targeter_name
      t.integer :counts
      t.timestamps
    end
  end
end
