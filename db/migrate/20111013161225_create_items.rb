class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.integer :product_id
      t.string :delivery_type
      t.integer :pickup_id
      t.integer :quantity
      t.integer :supplier_invoice_id
      t.integer :line_item_id

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
