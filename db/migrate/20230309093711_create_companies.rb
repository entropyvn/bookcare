class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description
      t.integer :display_order
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
