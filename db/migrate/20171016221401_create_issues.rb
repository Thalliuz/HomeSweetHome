class CreateIssues < ActiveRecord::Migration[5.1]
  def change
    create_table :issues do |t|
      t.string :name
      t.string :address
      t.text :detail
      t.string :status, :default => 'pending'
      t.string :url, :default => 'http://via.placeholder.com/318x180'
      t.references :user
      t.references :owner

      t.timestamps
    end
  end
end
