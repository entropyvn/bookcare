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
require 'rails_helper'

RSpec.describe Category, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
