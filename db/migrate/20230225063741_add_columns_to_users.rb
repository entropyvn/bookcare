# frozen_string_literal: true

class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    # User information
    add_column :users, :fullname, :string
    add_column :users, :phone_number, :string
    add_column :users, :gender, :string
    add_column :users, :birthday, :string
    add_column :users, :address, :string

    # Short delete
    add_column :users, :delete_at, :string

    # 3rd fields
    add_column :users, :party_name, :string
    add_column :users, :party_type, :string
    add_column :users, :party_group, :string
  end
end
