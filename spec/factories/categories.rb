# == Schema Information
#
# Table name: categories
#
#  id                :bigint           not null, primary key
#  categoryable_type :string(255)
#  deleted_at        :datetime
#  description       :text(65535)
#  display_order     :integer
#  name              :string(255)
#  slug              :text(65535)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  author_id         :integer
#  categoryable_id   :bigint
#
# Indexes
#
#  index_categories_on_categoryable  (categoryable_type,categoryable_id)
#
FactoryBot.define do
  factory :category do
    name { "MyString" }
    description { "MyText" }
    display_order { 1 }
    deleted_at { "2023-03-07 22:01:00" }
  end
end
