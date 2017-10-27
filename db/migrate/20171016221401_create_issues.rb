class CreateIssues < ActiveRecord::Migration[5.1]
  def change
    create_table :issues do |t|
      t.string :name
      t.string :address
      t.string :number
      t.text :detail
      t.string :status
      t.references :user
      t.references :owner

      t.timestamps
    end
  end
end
