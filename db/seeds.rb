require_relative('../models/merchants')
require_relative('../models/tags')
require_relative('../models/transactions')

Transaction.delete_all()
Tag.delete_all()
Merchant.delete_all()

tag1 = Tag.new({
  "name" => "Groceries"
})
tag1.save()

tag2 = Tag.new({
  "name" => "Bills"
})
tag2.save()

tag3 = Tag.new({
  "name" => "Clothing"
})
tag3.save()

tag4 = Tag.new({
  "name" => "Eating Out"
})
tag4.save()

tag5 = Tag.new({
  "name" => "Entertainment"
})
tag5.save()

tag6 = Tag.new({
  "name" => "Transport"
})
tag6.save()

tag7 = Tag.new({
  "name" => "Home"
})
tag7.save()

tag8 = Tag.new({
  "name" => "Other"
})
tag8.save()
