class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.integer :age
      t.string :gendar
      t.string :email

      t.timestamps
    end
    add_index :users, :name, unique: true
  end
end
