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
class Company < ApplicationRecord
end
