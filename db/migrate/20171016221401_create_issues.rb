class CreateIssues < ActiveRecord::Migration[5.1]
  def change
    create_table :issues do |t|
      t.string :name
      t.string :address
      t.text :detail
      t.string :status, :default => 'pending'
      t.references :user
      t.references :owner

      t.timestamps
    end
  end
end
