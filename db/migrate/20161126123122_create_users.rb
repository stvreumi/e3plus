class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :account
      t.string :name
      t.string :email
      t.text :course

      t.timestamps null: false
    end
  end
end
