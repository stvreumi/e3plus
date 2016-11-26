class AddUserPasswordDigest < ActiveRecord::Migration
  #add password column to User model
  def change
    add_column :users, :password_digest, :string
  end
end
