require_relative('../models/merchants')
require_relative('../models/tags')
require_relative('../models/transactions')

Transaction.delete_all()
Tag.delete_all()
Merchant.delete_all()
