require('pg')
require_relative('../db/sqlrunner')

class Artist

  attr_reader :name, :id
  attr_writer :name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO artists (name) VALUES ($1) RETURNING id"
    values = [ @name ]
    result = SqlRunner.run(sql, values)
    @id = result[0]["id"].to_i
  end

  def self.all()
    sql = "SELECT * FROM artists"
    result = SqlRunner.run(sql)
    return result.map { |banana| Artist.new(banana) }
  end

  def update
   sql = "UPDATE artists SET name = $1 WHERE id = $2"
   values = [@name, @id]
   SQLRunner.run(sql, values)
  end

 def delete
   sql = "DELETE FROM artists WHERE id = $1"
   values = [@id]
   SQLRunner.run(sql, values)
 end

end
