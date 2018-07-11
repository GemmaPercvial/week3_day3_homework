require("pry")
require_relative("../models/pizza_order")
require_relative("../models/customer")


artist1 = Artist.new({'name' => 'Adele'})
artist2 = Artist.new({'name' => 'Artic Monkeys'})
artist13 = Artist.new({'name' => 'Kanye West'})

artist1.save()
artist2.save()
artist3.save()

album1 = Album.new({'artist_name' => artist3.id, 'album_name' => 'Late Registration', 'year' => '2005'})
album2 = Album.new({'artist_name' => artist3.id, 'album_name' => 'Graduation', 'year' => '2007'})
album3 = Album.new({'artist_name' => artist2.id, 'album_name' => 'Hambug', 'year' => '2009'})
album4 = Album.new({'artist_name' => artist1.id, 'album_name' => '21', 'year' => '2011'})
album5 = Album.new({'artist_name' => artist2.id, 'album_name' => '21', 'year' => '2011'})
album6 = Album.new({'artist_name' => artist1.id, 'album_name' => '25', 'year' => '2015'})

album1.save()
album2.save()
album3.save()
album4.save()
album5.save()
album6.save()
