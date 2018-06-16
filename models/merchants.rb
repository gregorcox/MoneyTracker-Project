require_relative('../db/sqlrunner.rb')

class Merchant

  attr_reader(:name, :id)

  def initialize(options)
    @id = options['id']to_i if options['id']
    @name = options['name']
  end

  def save()
  sql = "INSERT INTO merchants
  (name)
  VALUES
  ($1)
  RETURNING *"
  values = [@name]
  merchant_data = SqlRunner.run(sql, values)
  @id = merchant_data.first()['id'].to_i
end

end
