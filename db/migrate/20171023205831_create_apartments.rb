class CreateApartments < ActiveRecord::Migration[5.1]
  def change
    create_table :apartments do |t|
      t.text :address
      t.string :number

      t.timestamps
    end
  end
end
