class CreateBooleans < ActiveRecord::Migration[5.2]
  def change
    create_table :booleans, id: false do |t|
      t.string :id, null: false
      t.string :name
      t.boolean :val, default: false

      t.timestamps
    end
    add_index :booleans, :id, unique: true
  end
end
