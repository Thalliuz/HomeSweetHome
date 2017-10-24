class CreateLanlords < ActiveRecord::Migration[5.1]
  def change
    create_table :lanlords do |t|
      t.string :realname
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
