class CreateOwners < ActiveRecord::Migration[5.1]
  def change
    create_table :owners do |t|
      t.string :username
      t.string :firstname
      t.string :lastname
      t.string :address
      t.string :phonenumber
      t.string :password_digest

      t.timestamps
    end
  end
end
