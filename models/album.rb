require('pg')
require_relative('../db/sqlrunner')

class Album

  attr_reader :artist_name, :album_name, :year
  attr_writer :artist_name, :album_name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @artist_name = options['artist_name']
    @album_name = options ['album_name']
    @year = options ['year']
  end








end
