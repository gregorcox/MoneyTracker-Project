require_relative('../db/sqlrunner.rb')

class Transaction

  attr_reader(:merchant_id, :tag_id, :amount, :id, :timestamp)

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @merchant_id = options['merchant_id'].to_i
    @tag_id = options['tag_id'].to_i
    @amount = options['amount'].to_i
    @timestamp = options['timestamp']
  end

  def pretty_amount()
    return "£#{@amount / 100.00}"
  end

  def tag()
    sql = "SELECT * FROM tags WHERE id = $1"
    values = [@tag_id]
    tag = SqlRunner.run(sql, values).first
    return Tag.new(tag)
  end

  def merchant()
    sql = "SELECT * FROM merchants WHERE id = $1"
    values = [@merchant_id]
    merchant = SqlRunner.run(sql, values).first
    return Merchant.new(merchant)
  end

  def save()
    sql = "INSERT INTO transactions
    (merchant_id, tag_id, amount, timestamp)
    VALUES
    ($1, $2, $3, $4)
    RETURNING *"
    values = [@merchant_id, @tag_id, @amount, @timestamp]
    transaction_data = SqlRunner.run(sql, values)
    @id = transaction_data.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM transactions"
    transactions = SqlRunner.run( sql )
    result = transactions.map { |transaction| Transaction.new( transaction ) }
    return result
  end

  def self.find( id )
    sql = "SELECT * FROM transactions
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return Transaction.new( results.first )
  end

  def update()
    sql = "UPDATE transactions
      SET
      (merchant_id, tag_id, amount, timestamp) =
      ($1, $2, $3)
      WHERE id = $4"
    values = [@merchant_id, @tag_id, @amount, @id, @timestamp]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM transactions
    WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end

  def self.delete_all()
    sql = "DELETE FROM transactions;"
    SqlRunner.run(sql)
  end





end
