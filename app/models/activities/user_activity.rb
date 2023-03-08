# frozen_string_literal: true

# == Schema Information
#
# Table name: versions
#
#  id             :bigint           not null, primary key
#  event          :string(255)      not null
#  item_type      :string(191)      not null
#  object         :text(4294967295)
#  object_changes :text(4294967295)
#  whodunnit      :string(255)
#  created_at     :datetime
#  item_id        :bigint           not null
#
# Indexes
#
#  index_versions_on_item_type_and_item_id  (item_type,item_id)
#
module Activities
  class UserActivity < ::PaperTrail::Version
    include ActivityConcern

    belongs_to :user, class_name: 'User', foreign_key: 'item_id', optional: true
    belongs_to :author, class_name: 'User', foreign_key: :whodunnit, optional: true
  end
end
