class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email

      t.timestamps

      t.add_index :email, unique: true
    end
  end
end
