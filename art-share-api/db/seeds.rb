# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


users = User.create([
    {username: 'jmsteen'}, 
    {username: 'mma'}, 
    {username: 'jmta'}])

artworks = Artwork.create(
    [{ title: 'Mona Lisa', image_url: 'monalisa.com', artist_id: '2'},
    { title: 'Starry Night', image_url: 'starrynight.net' , artist_id: '3'}])

artwork_share = ArtworkShare.create(
    [{ artwork_id: 2, viewer_id: 1 },
    { artwork_id: 1, viewer_id: 3 }])