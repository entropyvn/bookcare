# == Schema Information
#
# Table name: companies
#
#  id            :bigint           not null, primary key
#  deleted_at    :datetime
#  description   :text(65535)
#  display_order :integer
#  name          :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
require 'rails_helper'

RSpec.describe Company, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
