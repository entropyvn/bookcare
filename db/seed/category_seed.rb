# frozen_string_literal: true

%w[book1 book2 book3 book4].each do |c|
  category = Category.where(name: c).first_or_initialize
  category.save
end
