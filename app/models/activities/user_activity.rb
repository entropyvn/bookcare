# frozen_string_literal: true

module Activities
  class UserActivity < ::PaperTrail::Version
    include ActivityConcern

    belongs_to :user, class_name: 'User', foreign_key: 'item_id', optional: true
    belongs_to :author, class_name: 'User', foreign_key: :whodunnit, optional: true
  end
end
