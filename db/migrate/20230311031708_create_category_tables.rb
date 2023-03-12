# frozen_string_literal: true

class CreateCategoryTables < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.text :slug
      t.text :description
      t.integer :display_order
      t.integer :author_id
      t.references :categoryable, polymorphic: true

      t.datetime :deleted_at
      t.timestamps
    end
  end
end
