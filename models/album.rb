require('pg')
require_relative('../db/sqlrunner')

class Album

  attr_reader :artist_name, :album_name, :year, :id
  attr_writer :artist_name, :album_name, :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @artist_name = options['artist_name']
    @album_name = options ['album_name']
    @year = options ['year']
  end

  def save()
    sql = "INSERT INTO albums (artist_name, album_name, year) VALUES ($1, $2, $3) RETURNING id"
    values = [@artist_name, @album_name, @year]
    result = SqlRunner.run(sql, values)
    @id = result [0]["id"].to_i
  end

  def self.all()
    sql = "SELECT * FROM albums"
    result = SqlRunner.run(sql)
    return result.map { |banana| Album.new(banana) }
  end

  def self.find(id)
   sql = "SELECT * FROM albums WHERE id = $1"
   values = [id]
   albums = SQLRunner.run(sql, values)
   album_hash = albums.first
   return Album.new(album_hash)
 end

 def self.find_artist(id)
   @id = id
   sql = "SELECT * FROM albums WHERE artist_id = $1"
   values = [@id]
   albums = SQLRunner.run(sql, values)
   return albums.map { |banana| Album.new(banana) }
 end

 def update(sql, values = [])
   sql = "UPDATE albums SET (artist_name, album_name, year) = ($1, $2, $3) WHERE id = $4"
   values = [@artist_name, @album_name, @year]
   SqlRunner.run(sql, values)
 end

 def delete
   sql = "DELETE FROM albums WHERE id = $1"
   values = [@id]
   SQLRunner.run(sql, values)
 end

end
