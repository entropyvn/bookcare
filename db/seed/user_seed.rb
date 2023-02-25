# frozen_string_literal: true

%w[admin moderator guest].each do |role|
  user = User.where(email: "#{role}@test.com").first_or_initialize
  user.password = '123456'
  user.confirmed_at = Time.now
  user.save(validate: false)

  user.add_role :admin

  puts "Create user #{role} at #{user.created_at}"
end
