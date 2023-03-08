# == Schema Information
#
# Table name: categories
#
#  id            :bigint           not null, primary key
#  deleted_at    :datetime
#  description   :text(65535)
#  display_order :integer
#  name          :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
FactoryBot.define do
  factory :category do
    name { "MyString" }
    description { "MyText" }
    display_order { 1 }
    deleted_at { "2023-03-07 22:01:00" }
  end
end
