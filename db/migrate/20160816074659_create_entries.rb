class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :name
      t.integer :emp_id
      t.string :SFID
      t.string :Last_Change
      t.string :Modified_At
      t.string :Message

      t.timestamps null: false
    end
  end
end
