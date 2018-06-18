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
  "name" => "Going Out"
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

merchant1 = Merchant.new({
  "name" => "Sainsburys"
})
merchant1.save()

merchant2 = Merchant.new({
  "name" => "Amazon"
})
merchant2.save()

merchant3 = Merchant.new({
  "name" => "Cineworld"
})
merchant3.save()

merchant4 = Merchant.new({
  "name" => "Scotrail"
})
merchant4.save()

merchant5 = Merchant.new({
  "name" => "Asos"
})
merchant5.save()

transaction1 = Transaction.new({
  "merchant_id" => merchant1.id,
  "tag_id" => tag1.id
  "amount" => 24.52
})
transaction1.save()

transaction2 = Transaction.new({
  "merchant_id" => merchant3.id,
  "tag_id" => tag5.id
  "amount" => 12
})
transaction2.save()

transaction3 = Transaction.new({
  "merchant_id" => merchant4.id,
  "tag_id" => tag6.id
  "amount" => 7.99
})
transaction3.save()

transaction4 = Transaction.new({
  "merchant_id" => merchant5.id,
  "tag_id" => tag3.id
  "amount" => 30
})
transaction4.save()

transaction5 = Transaction.new({
  "merchant_id" => merchant2.id,
  "tag_id" => tag7.id
  "amount" => 4.99
})
transaction5.save()

transaction6 = Transaction.new({
  "merchant_id" => merchant2.id,
  "tag_id" => tag5.id
  "amount" => 140
})
transaction6.save()
