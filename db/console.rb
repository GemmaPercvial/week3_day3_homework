require("pry")
require_relative("../models/artist")
require_relative("../models/album")

# Create and Save Artists
artist1 = Artist.new({'name' => 'Adele'})
artist2 = Artist.new({'name' => 'Artic Monkeys'})
artist3 = Artist.new({'name' => 'Kanye West'})

# artist1.save()
# artist2.save()
# artist3.save()

# Create and Save Albums
album1 = Album.new({'artist_name' => artist3.id, 'album_name' => 'Late Registration', 'year' => '2005'})
album2 = Album.new({'artist_name' => artist3.id, 'album_name' => 'Graduation', 'year' => '2007'})
album3 = Album.new({'artist_name' => artist2.id, 'album_name' => 'Hambug', 'year' => '2009'})
album4 = Album.new({'artist_name' => artist1.id, 'album_name' => '21', 'year' => '2011'})
album5 = Album.new({'artist_name' => artist2.id, 'album_name' => 'AM', 'year' => '2011'})
album6 = Album.new({'artist_name' => artist1.id, 'album_name' => '25', 'year' => '2015'})

album1.save()
album2.save()
album3.save()
album4.save()
album5.save()
album6.save()

# List All Artists/Albums
p Artist.all()
p Album.all()

# List all the albums they have by an artist
p Album.find(id)

# Show the artist any album belongs to

# Every artist should have a name, and each album should have a name/title, genre and artist ID.

# Edit Artists/Albums
album1.artist_name = artist1.id
album1.album_name = "12"
album1.update('','')

# Delete Artists/Albums
p Album.delete()

# Find Artists/Albums by their ID

# --------------- Having dificulty with wrong number of arguments error and artist id
