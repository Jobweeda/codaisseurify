Artist.destroy_all

artist_one      = Artist.create( { artist_name: "Arctic Monkeys" } )
artist_two      = Artist.create( { artist_name: "Queens of the Stone Age" })
# artist_three    = Artist.create

my_song         = Song.create({ song_name: "Riot Van", artist: artist_one })
his_song        = Song.create({song_name: "Balaclava", artist: artist_one})
their_song      = Song.create({song_name: "Better Living Through Chemistry", artist: artist_two})
