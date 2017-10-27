class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.text :address
      t.references :user
      t.references :owner

      t.timestamps
    end
  end
end
