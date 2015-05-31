class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :bands, :user_id
  end
end
