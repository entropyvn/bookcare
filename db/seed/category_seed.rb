# frozen_string_literal: true

%w[
  Action and Adventure
  Classics
  Comic Book or Graphic Novel
  Detective and Mystery
  Fantasy
  Historical Fiction
  Horror
  Literary Fiction
].each do |category_name|
  category = Category.where(name: category_name).first_or_initialize
  category.save

  puts "Create category #{category_name} at #{category.created_at}"
end
