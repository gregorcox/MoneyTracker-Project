require_relative('../models/merchants')
require_relative('../models/tags')
require_relative('../models/transactions')
require('pry')
require('date')

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

tag9 = Tag.new({
  "name" => "Travel"
})
tag9.save()

tag10 = Tag.new({
  "name" => "Sports"
})
tag10.save()

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

merchant6 = Merchant.new({
  "name" => "Nike"
})
merchant6.save()

merchant7 = Merchant.new({
  "name" => "British Gas"
})
merchant7.save()

transaction1 = Transaction.new({
  "merchant_id" => merchant1.id,
  "tag_id" => tag1.id,
  "amount" => 2452,
  "timestamp" => Date.strptime('05-06-2018', '%d-%m-%Y')
})
transaction1.save()

transaction2 = Transaction.new({
  "merchant_id" => merchant3.id,
  "tag_id" => tag5.id,
  "amount" => 1200,
  "timestamp" => Date.strptime('18-05-2018', '%d-%m-%Y')
})
transaction2.save()

transaction3 = Transaction.new({
  "merchant_id" => merchant4.id,
  "tag_id" => tag6.id,
  "amount" => 799,
  "timestamp" => Date.strptime('29-05-2018', '%d-%m-%Y')
})
transaction3.save()

transaction4 = Transaction.new({
  "merchant_id" => merchant5.id,
  "tag_id" => tag3.id,
  "amount" => 3000,
  "timestamp" => Date.strptime('04-06-2001', '%d-%m-%Y')
})
transaction4.save()

transaction5 = Transaction.new({
  "merchant_id" => merchant2.id,
  "tag_id" => tag7.id,
  "amount" => 499,
  "timestamp" => Date.strptime('28-12-2017', '%d-%m-%Y')
})
transaction5.save()

transaction6 = Transaction.new({
  "merchant_id" => merchant2.id,
  "tag_id" => tag5.id,
  "amount" => 14000,
  "timestamp" => Date.strptime('23-01-2018', '%d-%m-%Y')
})
transaction6.save()

transaction7 = Transaction.new({
  "merchant_id" => merchant6.id,
  "tag_id" => tag10.id,
  "amount" => 1495,
  "timestamp" => Date.strptime('20-05-2018', '%d-%m-%Y')
})
transaction7.save()

transaction8 = Transaction.new({
  "merchant_id" => merchant7.id,
  "tag_id" => tag2.id,
  "amount" => 8563,
  "timestamp" => Date.strptime('05-05-2018', '%d-%m-%Y')
})
transaction8.save()

binding.pry
nil
