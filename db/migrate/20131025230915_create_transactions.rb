class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
    	t.date :date
    	t.float :value
    	t.string :member_id
    	t.text :description
    	t.belongs_to :categories
    	t.belongs_to :companies
      t.timestamps
    end
  end
end
