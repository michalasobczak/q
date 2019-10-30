class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.string :name
      t.decimal :val_decimal
      t.integer :val_integer
      t.float :val_float
      t.binary :val_bin
      t.boolean :val_boo

      t.timestamps
    end
  end
end
