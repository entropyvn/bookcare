# frozen_string_literal: true

%w[admin moderator guest].each do |role|
  user = User.new
  user.email = "#{role}@test.com"
  user.password = '123456'
  user.confirmed_at = Time.now
  user.save(validate: false)
end
