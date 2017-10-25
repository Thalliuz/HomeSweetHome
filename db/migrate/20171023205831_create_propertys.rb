class CreateProtertys < ActiveRecord::Migration[5.1]
  def change
    create_table :propertys do |t|
      t.text :address
      t.string :number
      t.references :user
      t.references :lanlord

      t.timestamps
    end
  end
end
