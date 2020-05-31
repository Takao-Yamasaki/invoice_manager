class CreateSummaries < ActiveRecord::Migration[6.0]
  def change
    create_table :summaries do |t|
      t.integer :invoice_id
      t.integer :client_id
      t.integer :item_id
      t.integer :amount
      t.date :registration
    end
  end
end 
