class CreateIssues < ActiveRecord::Migration[5.1]
  def change
    create_table :issues do |t|
      t.string :name
      t.string :address
      t.string :number
      t.text :detail
      t.references :user
      
      t.timestamps
    end
  end
end
