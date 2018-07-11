require('pg')

class SqlRunner
  def self.run( sql, values = [])
    begin
      db = PG.connect({ dbname: 'pizza_shop', host: 'localhost' })
      db.prepare("banana",sql)
      result = db.exec_prepared("banana", values)
    ensure
      db.close() if db != nil
    end
    return result
  end
end
