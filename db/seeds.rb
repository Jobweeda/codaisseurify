Photo.destroy_all
Artist.destroy_all

artist_one      = Artist.create({ name: "Arctic Monkeys" } )
artist_two      = Artist.create({ name: "Queens of the Stone Age" })
# artist_three    = Artist.create

my_song         = Song.create({ name: "Riot Van", artist: artist_one })
his_song        = Song.create({ name: "Balaclava", artist: artist_one })
their_song      = Song.create({ name: "Better Living Through Chemistry", artist: artist_two })

his_photo = Photo.create!(remote_image_url: "http://res.cloudinary.com/dop1cbudl/image/upload/v1505044564/AM_efmrdb.jpg", artist: artist_one)
my_photo =  Photo.create!(remote_image_url: "http://res.cloudinary.com/dop1cbudl/image/upload/v1505044553/QOTSA_gxripz.jpg", artist: artist_two)
