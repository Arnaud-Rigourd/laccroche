# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).

require 'open-uri'

puts "Launching the seed"
puts "Destroying..."

Message.destroy_all
Chatroom.destroy_all
Like.destroy_all
Project.destroy_all
User.destroy_all

puts "Creating users..."



musician = User.create!(nickname: "ChrisS", first_name: "Chris", last_name: "Shards", email: "chris@gmail.com", password: "123456", description: "Chris Shards is a multi-instrumentalist and producer from the UK. His musical journey began with classical percussion, which led to an exploration of music technology and composition. His unique fusion of organic and electronic elements has seen him remix, produce, and perform alongside some of the biggest names in the industry. With his wide range of production styles, Chris has crafted music for film, television, and video games. As a live performer, Chris brings a dynamic energy to the stage, captivating audiences with his powerful beats and immersive soundscapes.", avatar: "https://res.cloudinary.com/dwullr589/image/upload/v1670340208/avatar4.jpg", banner: "https://dr.savee-cdn.com/things/5/9/6687ccce6f7269913642e8.webp")

musician2 = User.create!(nickname: "ImalaZ", first_name: "Imala", last_name: "Zir", email: "imalaz@gmail.com", password: "123456", description: " Imala Zir is a talented and innovative musician with an eclectic approach to music. His style combines elements of rock, folk, funk, reggae, and jazz, creating a unique sound all his own. His lyrics explore questions of identity, life and love, inspiring listeners with thoughtful messages. Lucas Tyty is an artist who knows how to move your heart, mind and soul through his unique musical expressions.", avatar: "https://res.cloudinary.com/dwullr589/image/upload/v1670573565/avatar5_shsfbf.jpg", banner: "https://dr.savee-cdn.com/things/5/9/6687bbce6f7269913642c1.webp")


video_artist = User.create!(nickname: "HowardWin", first_name: "Howard", last_name: "Wimshurst", email: "howard@gmail.com", password: "123456", description: "Howard Wimshurst is an award-winning filmmaker and artist who specializes in hand-drawn animation. His background in animation spans 10 years, starting with independent filmmaking from his bedroom, progressing to a foundation degree in art and design, then a Bachelor of Arts degree in Animation. His musical style blends together classical instruments and modern production techniques, creating a unique and mesmerizing soundscape.

His passion for collaboration has seen him work with fellow composers and producers, designing music for video games, television, and film. On stage, Howard brings an electrifying energy and delivers captivating performances that transport you on a musical journey. His tracks infuse traditional elements and modern production styles, delivering a truly unforgettable experience.", avatar: "https://res.cloudinary.com/dwullr589/image/upload/v1670340208/avatar3.jpg", banner: "https://cdn.pixabay.com/photo/2016/11/22/19/15/hand-1850120_1280.jpg")

artwork_artist = User.create!(nickname: "Novans", first_name: "Novans", last_name: "Adikresna", email: "novans@gmail.com", password: "123456", description: "Novans Adikresna is a graphic designer from Indonesia. He combines traditional technique with modern design elements to create stunning visuals. His love of experimentation and exploration has seen him venture into a variety of fields, including animation, video games, and web design. With each project, Novans seeks to push boundaries and create something unique and impactful that stands out from the crowd.

He is driven by a passion for collaboration, as he strives to bring together cutting-edge technology and creative ideas. From intricate typography to vibrant illustrations, Novans provides the perfect visual accompaniment to any project.", avatar: "https://res.cloudinary.com/dwullr589/image/upload/v1670340209/avatar2.jpg", banner: " https://dr.savee-cdn.com/things/5/a/ce85f0e7e99754de2a04d5.webp")



artwork_artist_sam = User.create!(nickname: "Samdoesart", first_name: "Sam", last_name: "Adams", email: "sam@gmail.com", password: "123456", description: "Hello! My name is Arnaud! I'm a 24yo digital artist based in Toronto. I love to paint! Art has actually been a passion of mine for most of my life!

I stopped learning art after high school, kept it as a side hobby but I didn't make any real attempts to improve and get better. But early 2020 I decided to pick this passion back up because I realized that this is truly the one thing that I love doing. I discovered so many amazing artists, and realized just how much more there is for me to learn. I've made it a habit to create regularly, to study and improve and be able to tell my own stories through my work and hopefully inspire others to pursue their artistic passions along the way.

i'd love more than anything for you to join me on this journey. I'm gonna keep learning, keep creating, and give all I can to the art community and to this passion of mine that brings so much happiness to my life.", avatar: "https://res.cloudinary.com/dwullr589/image/upload/v1670340208/avatar1.jpg", banner: "https://dr.savee-cdn.com/things/5/b/3b2107c82900693ae89884.webp")


puts "Creating projects..."

album_file = URI.open("https://res.cloudinary.com/dal73z4cj/image/upload/v1670259397/chris_album_ojuvrb.jpg")
albumbis_file = URI.open("https://res.cloudinary.com/dal73z4cj/image/upload/v1670260757/chris_albumbis_pyzbsr.jpg")
album2_file = URI.open("https://res.cloudinary.com/dal73z4cj/image/upload/v1670259397/chris_album2_apqg8r.jpg")
album2bis_file = URI.open("https://res.cloudinary.com/dal73z4cj/image/upload/v1670260757/chris_album2bis_khchoj.jpg")
album3_file = URI.open("https://res.cloudinary.com/dal73z4cj/image/upload/v1670259397/chris_album3_t1efww.jpg")
apricity_file = URI.open("https://res.cloudinary.com/dal73z4cj/image/upload/v1670490318/apricity_axd8ly.jpg")
light_file = URI.open("https://res.cloudinary.com/dal73z4cj/image/upload/v1670490605/light_mzusel.jpg")

# 1. MUSIC

music_1 = Project.new(category: Project::CATEGORIES[0], title: "Always With You", collab: "#{artwork_artist.nickname}", video_url: "", music_url: "https://open.spotify.com/track/1JBqbYJKV57GBuSLl3j3TN?si=07cf0f8e9deb4772", user_id: musician.id, description: "This musical project stands out for its experimental sound, blending traditional instruments with modern production techniques. Drawing inspiration from a variety of genres, this project creates a unique soundscape that is both familiar and innovative. The driving force behind the music is a passion for collaboration, as they strive to bring together unique sonic palettes and push boundaries. Each song takes a journey through a variety of musical textures, making every track an unpredictable and mesmerizing experience. From delicate and subtle melodies to thunderous basslines and breakbeats, there's something for everyone in this musical project. There's an unmistakable energy to the music, which is sure to captivate and inspire listeners. It's music that challenges the listener and promises excitement with.

Every performance is an exploration, a chance to discover new paths and unexpected possibilities. Live sets build on the energy of the tracks, taking the project in new directions and pushing the audience to experience the music in a new way. With each performance, the audience is treated to something unique and inspirational, creating a truly one-of-a-kind listening experience. So venture forth and explore this musical project for yourself - you won't be disappointed.", position: 1)
music_1.photo.attach(io: album_file, filename: "album.jpg", content_type: "image/jpg")
music_1.save!

new_music = Project.new(category: Project::CATEGORIES[0], title: "Apricity", collab: artwork_artist.nickname, video_url: "", music_url: "https://open.spotify.com/track/6cr9XbO2yAJgTNa6XNRINF?si=8eaa37eec02b48be", user_id: musician2.id, description: "The creation of a musical project takes a great deal of creativity and skill. It requires an artist to have a clear vision and the ability to collaborate with others in order to bring their ideas to life. Every step of the process is essential, from songwriting, to production, to mastering. The end result is a unique and powerful piece of music that speaks to its audience and provides them with an emotional experience.

Music is much more than just sound; it is a form of self-expression that can tell stories, invoke emotions, and create meaningful experiences. Crafting a musical project is a journey filled with creativity, experimentation, and collaboration. It is a process built on pushing boundaries, exploring ideas, and honing skills. When completed, a musical project is more than simply a collection of notes and lyrics – it is a piece of art that will live on for years to come.", position: 2)
new_music.photo.attach(io: apricity_file, filename: "apricity.jpg", content_type: "image/jpg")
new_music.save!

new_music2 = Project.new(category: Project::CATEGORIES[0], title: "The light of day", collab: artwork_artist.nickname, video_url: "", music_url: "https://open.spotify.com/track/0gDMSJ8JtTjnAnROaM4L9w?si=13f1391a2fc04f15", user_id: musician2.id, description: "The creation of a musical project takes a great deal of creativity and skill. It requires an artist to have a clear vision and the ability to collaborate with others in order to bring their ideas to life. Every step of the process is essential, from songwriting, to production, to mastering. The end result is a unique and powerful piece of music that speaks to its audience and provides them with an emotional experience.

Music is much more than just sound; it is a form of self-expression that can tell stories, invoke emotions, and create meaningful experiences. Crafting a musical project is a journey filled with creativity, experimentation, and collaboration. It is a process built on pushing boundaries, exploring ideas, and honing skills. When completed, a musical project is more than simply a collection of notes and lyrics – it is a piece of art that will live on for years to come.", position: 3)
new_music2.photo.attach(io: light_file, filename: "light.jpg", content_type: "image/jpg")
new_music2.save!

music_2 = Project.new(category: Project::CATEGORIES[0], title: "Salt Lake Seagull", collab: "#{artwork_artist.nickname}", video_url: "", music_url: "https://open.spotify.com/track/4WvAR6CHlqVjbUupNjkmcb?si=07cf0f8e9deb4772", user_id: musician.id, description: "This musical project stands out for its experimental sound, blending traditional instruments with modern production techniques. Drawing inspiration from a variety of genres, this project creates a unique soundscape that is both familiar and innovative. The driving force behind the music is a passion for collaboration, as they strive to bring together unique sonic palettes and push boundaries. Each song takes a journey through a variety of musical textures, making every track an unpredictable and mesmerizing experience. From delicate and subtle melodies to thunderous basslines and breakbeats, there's something for everyone in this musical project. There's an unmistakable energy to the music, which is sure to captivate and inspire listeners. It's music that challenges the listener and promises excitement with.

Every performance is an exploration, a chance to discover new paths and unexpected possibilities. Live sets build on the energy of the tracks, taking the project in new directions and pushing the audience to experience the music in a new way. With each performance, the audience is treated to something unique and inspirational, creating a truly one-of-a-kind listening experience. So venture forth and explore this musical project for yourself - you won't be disappointed.", position: 4)
music_2.photo.attach(io: album3_file, filename: "album3.jpg", content_type: "image/jpg")
music_2.save!

music_3 = Project.new(category: Project::CATEGORIES[0], title: "Heavy Heart", collab: "#{video_artist.nickname}", video_url: "", music_url: "https://open.spotify.com/track/2iqXKIikPBMKMrIISWVEEE?si=07cf0f8e9deb4772", user_id: musician.id, description: "This musical project stands out for its experimental sound, blending traditional instruments with modern production techniques. Drawing inspiration from a variety of genres, this project creates a unique soundscape that is both familiar and innovative. The driving force behind the music is a passion for collaboration, as they strive to bring together unique sonic palettes and push boundaries. Each song takes a journey through a variety of musical textures, making every track an unpredictable and mesmerizing experience. From delicate and subtle melodies to thunderous basslines and breakbeats, there's something for everyone in this musical project. There's an unmistakable energy to the music, which is sure to captivate and inspire listeners. It's music that challenges the listener and promises excitement with.

Every performance is an exploration, a chance to discover new paths and unexpected possibilities. Live sets build on the energy of the tracks, taking the project in new directions and pushing the audience to experience the music in a new way. With each performance, the audience is treated to something unique and inspirational, creating a truly one-of-a-kind listening experience. So venture forth and explore this musical project for yourself - you won't be disappointed.", position: 5)
music_3.photo.attach(io: album2_file, filename: "album2.jpg", content_type: "image/jpg")
music_3.save!

music_4 = Project.new(category: Project::CATEGORIES[0], title: "Ghetto Dreamin'", collab: artwork_artist.nickname, video_url: "", music_url: "https://open.spotify.com/track/2ETiOcuJDgUwaXLNZKnZrM?si=07cf0f8e9deb4772", user_id: musician.id, description: "This musical project stands out for its experimental sound, blending traditional instruments with modern production techniques. Drawing inspiration from a variety of genres, this project creates a unique soundscape that is both familiar and innovative. The driving force behind the music is a passion for collaboration, as they strive to bring together unique sonic palettes and push boundaries. Each song takes a journey through a variety of musical textures, making every track an unpredictable and mesmerizing experience. From delicate and subtle melodies to thunderous basslines and breakbeats, there's something for everyone in this musical project. There's an unmistakable energy to the music, which is sure to captivate and inspire listeners. It's music that challenges the listener and promises excitement with.

Every performance is an exploration, a chance to discover new paths and unexpected possibilities. Live sets build on the energy of the tracks, taking the project in new directions and pushing the audience to experience the music in a new way. With each performance, the audience is treated to something unique and inspirational, creating a truly one-of-a-kind listening experience. So venture forth and explore this musical project for yourself - you won't be disappointed.", position: 6)
music_4.photo.attach(io: album2bis_file, filename: "album2bis.jpg", content_type: "image/jpg")
music_4.save!

music_5 = Project.new(category: Project::CATEGORIES[0], title: "Between The Waves", collab: "#{artwork_artist.nickname}", video_url: "", music_url: "https://open.spotify.com/track/5lz7FCk3apkROsI6hctQLU?si=07cf0f8e9deb4772", user_id: musician.id, description: "This musical project stands out for its experimental sound, blending traditional instruments with modern production techniques. Drawing inspiration from a variety of genres, this project creates a unique soundscape that is both familiar and innovative. The driving force behind the music is a passion for collaboration, as they strive to bring together unique sonic palettes and push boundaries. Each song takes a journey through a variety of musical textures, making every track an unpredictable and mesmerizing experience. From delicate and subtle melodies to thunderous basslines and breakbeats, there's something for everyone in this musical project. There's an unmistakable energy to the music, which is sure to captivate and inspire listeners. It's music that challenges the listener and promises excitement with.

Every performance is an exploration, a chance to discover new paths and unexpected possibilities. Live sets build on the energy of the tracks, taking the project in new directions and pushing the audience to experience the music in a new way. With each performance, the audience is treated to something unique and inspirational, creating a truly one-of-a-kind listening experience. So venture forth and explore this musical project for yourself - you won't be disappointed.", position: 7)
music_5.photo.attach(io: albumbis_file, filename: "albumbis.jpg", content_type: "image/jpg")
music_5.save!

puts "Musics are done!"

animation_showreel_file = URI.open("https://res.cloudinary.com/dal73z4cj/image/upload/v1670262234/animation_showreel_iiwjfe.jpg")
encounter_file = URI.open("https://res.cloudinary.com/dal73z4cj/image/upload/v1670262235/encounter_idlsoc.jpg")
danse_yokai_file = URI.open("https://res.cloudinary.com/dal73z4cj/image/upload/v1670262234/danse_of_the_yokai_iegm5w.jpg")
showreel_file = URI.open("https://res.cloudinary.com/dal73z4cj/image/upload/v1670262235/showreel_kmtgdz.jpg")
animation_reel_file = URI.open("https://res.cloudinary.com/dal73z4cj/image/upload/v1670262234/animation_reel_j3ss0u.jpg")

puts "Creating videos..."

# 2. VIDEO ART
video_1 = Project.new(category: Project::CATEGORIES[2], title: "Flying in the Sky", collab: musician.nickname, video_url: "https://youtu.be/9Z4TiA5JH_0", music_url: "", user_id: video_artist.id, description: "This animation project tells a captivating story that blends together traditional art and modern technology. Featuring vibrant colors, dynamic characters, and stunning visuals, each animation is a feast for the eyes. With detailed backgrounds and expressive character design, this project combines whimsy and wonder to transport audiences to a fantastical world. The music and sound design add an extra layer of depth and drama to the animation, creating a truly immersive experience. Each episode leaves viewers on the edge of their seats with suspense and anticipation, while crafting an enjoyable and memorable journey.

Whether the animation takes the audience on a thrilling journey or a heartwarming adventure, each story is sure to captivate and delight viewers of all ages. The animation project brings something fresh and unique to the world of animation, offering an emotional and visual journey that will stay with viewers long after the credits have rolled. Get ready to be transported to a world of magical possibilities - join this animation project today!", position: 8)
video_1.photo.attach(io: animation_showreel_file, filename: "animation_showreel.jpg", content_type: "image/jpg")
video_1.save!

puts "Issue on video 2"

video_2 = Project.new(category: Project::CATEGORIES[2], title: "Dance of the Yōkai", collab: musician.nickname, video_url: "https://youtu.be/piQpugWN2Xw", music_url: "", user_id: video_artist.id, description: "This animation project tells a captivating story that blends together traditional art and modern technology. Featuring vibrant colors, dynamic characters, and stunning visuals, each animation is a feast for the eyes. With detailed backgrounds and expressive character design, this project combines whimsy and wonder to transport audiences to a fantastical world. The music and sound design add an extra layer of depth and drama to the animation, creating a truly immersive experience. Each episode leaves viewers on the edge of their seats with suspense and anticipation, while crafting an enjoyable and memorable journey.

Whether the animation takes the audience on a thrilling journey or a heartwarming adventure, each story is sure to captivate and delight viewers of all ages. The animation project brings something fresh and unique to the world of animation, offering an emotional and visual journey that will stay with viewers long after the credits have rolled. Get ready to be transported to a world of magical possibilities - join this animation project today!", position: 9)
video_2.photo.attach(io: danse_yokai_file, filename: "danse_of_the_yokai.jpg", content_type: "image/jpg")
video_2.save!

puts "Issue on video 3"

video_3 = Project.new(category: Project::CATEGORIES[2], title: "Winter Hunting", collab: musician.nickname, video_url: "https://youtu.be/RDfu4iEeyro", music_url: "", user_id: video_artist.id, description: "This animation project tells a captivating story that blends together traditional art and modern technology. Featuring vibrant colors, dynamic characters, and stunning visuals, each animation is a feast for the eyes. With detailed backgrounds and expressive character design, this project combines whimsy and wonder to transport audiences to a fantastical world. The music and sound design add an extra layer of depth and drama to the animation, creating a truly immersive experience. Each episode leaves viewers on the edge of their seats with suspense and anticipation, while crafting an enjoyable and memorable journey.

Whether the animation takes the audience on a thrilling journey or a heartwarming adventure, each story is sure to captivate and delight viewers of all ages. The animation project brings something fresh and unique to the world of animation, offering an emotional and visual journey that will stay with viewers long after the credits have rolled. Get ready to be transported to a world of magical possibilities - join this animation project today!", position: 10)
video_3.photo.attach(io: encounter_file, filename: "encounter.jpg", content_type: "image/jpg")
video_3.save!

puts "Issue on video 4"

video_4 = Project.new(category: Project::CATEGORIES[2], title: "Lines Animation", collab: musician.nickname, video_url: "https://youtu.be/qMtsaIiwiaA", music_url: "", user_id: video_artist.id, description: "This animation project tells a captivating story that blends together traditional art and modern technology. Featuring vibrant colors, dynamic characters, and stunning visuals, each animation is a feast for the eyes. With detailed backgrounds and expressive character design, this project combines whimsy and wonder to transport audiences to a fantastical world. The music and sound design add an extra layer of depth and drama to the animation, creating a truly immersive experience. Each episode leaves viewers on the edge of their seats with suspense and anticipation, while crafting an enjoyable and memorable journey.

Whether the animation takes the audience on a thrilling journey or a heartwarming adventure, each story is sure to captivate and delight viewers of all ages. The animation project brings something fresh and unique to the world of animation, offering an emotional and visual journey that will stay with viewers long after the credits have rolled. Get ready to be transported to a world of magical possibilities - join this animation project today!", position: 11)
video_4.photo.attach(io: showreel_file, filename: "showreel.jpg", content_type: "image/jpg")
video_4.save!

puts "Issue on video 5"

video_5 = Project.new(category: Project::CATEGORIES[2], title: "Rough Animation", collab: artwork_artist_sam.nickname, video_url: "https://youtu.be/upzThAC2A_s", music_url: "", user_id: video_artist.id, description: "This animation project tells a captivating story that blends together traditional art and modern technology. Featuring vibrant colors, dynamic characters, and stunning visuals, each animation is a feast for the eyes. With detailed backgrounds and expressive character design, this project combines whimsy and wonder to transport audiences to a fantastical world. The music and sound design add an extra layer of depth and drama to the animation, creating a truly immersive experience. Each episode leaves viewers on the edge of their seats with suspense and anticipation, while crafting an enjoyable and memorable journey.

Whether the animation takes the audience on a thrilling journey or a heartwarming adventure, each story is sure to captivate and delight viewers of all ages. The animation project brings something fresh and unique to the world of animation, offering an emotional and visual journey that will stay with viewers long after the credits have rolled. Get ready to be transported to a world of magical possibilities - join this animation project today!", position: 12)

puts "Issue here?"

video_5.photo.attach(io: animation_reel_file, filename: "animation_reel.jpg", content_type: "image/jpg")
video_5.save!

puts "videos are done!"

# 3. ARTWORK
puts "Processing Cloudinary images..."
tesseract_file = URI.open("https://res.cloudinary.com/ducykclj8/image/upload/v1669753289/l-accroche/artwork-tesseract_twl56v.webp")
hyperspace_file = URI.open("https://res.cloudinary.com/ducykclj8/image/upload/v1669753289/l-accroche/artwork-hyperspace_lboe8r.webp")
planetarium_file = URI.open("https://res.cloudinary.com/ducykclj8/image/upload/v1669753289/l-accroche/artwork-planetariumwebp_jrjfqd.webp")
moon_file = URI.open("https://res.cloudinary.com/ducykclj8/image/upload/v1669753289/l-accroche/artwork-moon_r1j4tj.webp")
troglodyte_file = URI.open("https://res.cloudinary.com/ducykclj8/image/upload/v1669753289/l-accroche/artwork-troglodyte_tpqcdo.webp")

study_file = URI.open("https://res.cloudinary.com/dal73z4cj/image/upload/v1670256685/study_iesnfe.jpg")
more_studies_file = URI.open("https://res.cloudinary.com/dal73z4cj/image/upload/v1670256685/more_studies_yy0s5s.jpg")
snow_file = URI.open("https://res.cloudinary.com/dal73z4cj/image/upload/v1670256686/snow_u8urxo.jpg")
sunset_file = URI.open("https://res.cloudinary.com/dal73z4cj/image/upload/v1670256686/sunset_fhpnyw.jpg")

# ARTWORK.create

puts "Issue on Atwork 1"

tesseract = Project.new(category: Project::CATEGORIES[1], title: "Tesseract", collab: musician.nickname, video_url: "", music_url: "", user_id: artwork_artist.id, description: "This artwork project is a vibrant and captivating exploration of color and texture. Featuring bold hues and intricate details, the artworks showcase a unique vision of the world. The artist plays with materials to create dynamic pieces that combine traditional techniques with modern production values. From abstract paintings to three-dimensional sculptures, each artwork is an inviting and immersive experience. Every piece captures a unique moment that reveals something new with each viewing. Whether you're looking to add a touch of artistry to your home or office space, this artwork project promises to deliver something special and truly unforgettable.

This artwork project is a masterclass in versatility, showcasing the artist's skill in depicting various scenes and moods. From vibrant cityscapes to soft and dreamlike landscapes, the artworks offer something for all tastes. Each piece is infused with emotion, forming an intimate relationship between the viewer and the artwork. With each passing day, the artist continues to create new works that capture life’s special moments and tell stories of love, joy, and sorrow. Join this artwork project today and let the artist take you on a journey of discovery and exploration.

Every piece from this artwork project is a remarkable and unique experience. Whether you're looking for something abstract and thought-provoking or simple and beautiful, this artwork project has something for everyone. With its bold colors, intriguing details, and captivating stories, it’s no wonder why this artwork project continues to be so popular. Be sure to check out this artwork project for yourself - you won't be disappointed.", position: 13)
tesseract.photo.attach(io: tesseract_file, filename: "artwork-tesseract.webp", content_type: "image/webp")
tesseract.save!

puts "Issue on Atwork 2"

hyperspace = Project.new(category: Project::CATEGORIES[1], title: "Hyperspace", collab: musician.nickname, video_url: "", music_url: "", user_id: artwork_artist.id, description: "This artwork project is a vibrant and captivating exploration of color and texture. Featuring bold hues and intricate details, the artworks showcase a unique vision of the world. The artist plays with materials to create dynamic pieces that combine traditional techniques with modern production values. From abstract paintings to three-dimensional sculptures, each artwork is an inviting and immersive experience. Every piece captures a unique moment that reveals something new with each viewing. Whether you're looking to add a touch of artistry to your home or office space, this artwork project promises to deliver something special and truly unforgettable.

This artwork project is a masterclass in versatility, showcasing the artist's skill in depicting various scenes and moods. From vibrant cityscapes to soft and dreamlike landscapes, the artworks offer something for all tastes. Each piece is infused with emotion, forming an intimate relationship between the viewer and the artwork. With each passing day, the artist continues to create new works that capture life’s special moments and tell stories of love, joy, and sorrow. Join this artwork project today and let the artist take you on a journey of discovery and exploration.

Every piece from this artwork project is a remarkable and unique experience. Whether you're looking for something abstract and thought-provoking or simple and beautiful, this artwork project has something for everyone. With its bold colors, intriguing details, and captivating stories, it’s no wonder why this artwork project continues to be so popular. Be sure to check out this artwork project for yourself - you won't be disappointed.", position: 14)
hyperspace.photo.attach(io: hyperspace_file, filename: "artwork-hyperspace.webp", content_type: "image/webp")
hyperspace.save!

puts "Issue on Atwork 3"

sunset = Project.new(category: Project::CATEGORIES[1], title: "Sunset", collab: "#{artwork_artist.nickname}", video_url: "", music_url: "", user_id: artwork_artist_sam.id, description: "Sunset, focusing on some lighting and expression work! Reminder to draw today 😀🔪

BIRBS HAVE ARRIVED! Happy to announce that our birb plushies are NOW available on my merch store samdoesarts.com! Head over and adopt one today 🥹 stock is limited! Winterrrrrrrrr!!!! Ft. BIRB. Just uploaded a new youtube video where I paintover your guys' work while giving life changing roasts and advice. 😃 go check it out!. Omg also BIRB PLUSHIES ARE LAUNCHING NOVEMBER 23rd! Patreon members will be getting early access! Limited numbers!! Shoutout to the patrons on patreon who got an early access birb, we sold out of our entire early access stock 🫶

Tessa! This is the hardest angle for the face and u cant tell me otherwise! Did this one in procreate, i'm trying to expand my procreate brush library rn so I did some brush exploration! What are your guys' favourite default procreate brushes? Gimme recommendations pls. Nose and mouth stylization tutorial this month on my patreon :)

Happy to announce that our birb plushies are NOW available on my merch store samdoesarts.com! Head over and adopt one today 🥹 stock is limited! Winterrrrrrrrr!!!! Ft. BIRB. Just uploaded a new youtube video where I paintover your guys' work while giving life changing roasts and advice. 😃 go check it out!. Omg also BIRB PLUSHIES ARE LAUNCHING NOVEMBER 23rd! Patreon members will be getting early access! Limited numbers!! Shoutout to the patrons on patreon who got an early access birb, we sold out of our entire early access stock", position: 15)
sunset.photo.attach(io: sunset_file, filename: "sunset.jpg", content_type: "image/jpg")
sunset.save!

puts "Issue on Atwork 4"

planetarium = Project.new(category: Project::CATEGORIES[1], title: "Planetarium", collab: musician.nickname, video_url: "", music_url: "", user_id: artwork_artist.id, description: "This artwork project is a vibrant and captivating exploration of color and texture. Featuring bold hues and intricate details, the artworks showcase a unique vision of the world. The artist plays with materials to create dynamic pieces that combine traditional techniques with modern production values. From abstract paintings to three-dimensional sculptures, each artwork is an inviting and immersive experience. Every piece captures a unique moment that reveals something new with each viewing. Whether you're looking to add a touch of artistry to your home or office space, this artwork project promises to deliver something special and truly unforgettable.

This artwork project is a masterclass in versatility, showcasing the artist's skill in depicting various scenes and moods. From vibrant cityscapes to soft and dreamlike landscapes, the artworks offer something for all tastes. Each piece is infused with emotion, forming an intimate relationship between the viewer and the artwork. With each passing day, the artist continues to create new works that capture life’s special moments and tell stories of love, joy, and sorrow. Join this artwork project today and let the artist take you on a journey of discovery and exploration.

Every piece from this artwork project is a remarkable and unique experience. Whether you're looking for something abstract and thought-provoking or simple and beautiful, this artwork project has something for everyone. With its bold colors, intriguing details, and captivating stories, it’s no wonder why this artwork project continues to be so popular. Be sure to check out this artwork project for yourself - you won't be disappointed.", position: 16)
planetarium.photo.attach(io: planetarium_file, filename: "artwork-planetarium.webp", content_type: "image/webp")
planetarium.save!

puts "Issue on Atwork 5"

snow = Project.new(category: Project::CATEGORIES[1], title: "Snow", collab: video_artist.nickname, video_url: "", music_url: "", user_id: artwork_artist_sam.id, description: "Snow, focusing on some lighting and expression work! Reminder to draw today 😀🔪

BIRBS HAVE ARRIVED! Happy to announce that our birb plushies are NOW available on my merch store samdoesarts.com! Head over and adopt one today 🥹 stock is limited! Winterrrrrrrrr!!!! Ft. BIRB. Just uploaded a new youtube video where I paintover your guys' work while giving life changing roasts and advice. 😃 go check it out!. Omg also BIRB PLUSHIES ARE LAUNCHING NOVEMBER 23rd! Patreon members will be getting early access! Limited numbers!! Shoutout to the patrons on patreon who got an early access birb, we sold out of our entire early access stock 🫶

Tessa! This is the hardest angle for the face and u cant tell me otherwise! Did this one in procreate, i'm trying to expand my procreate brush library rn so I did some brush exploration! What are your guys' favourite default procreate brushes? Gimme recommendations pls. Nose and mouth stylization tutorial this month on my patreon :)

Happy to announce that our birb plushies are NOW available on my merch store samdoesarts.com! Head over and adopt one today 🥹 stock is limited! Winterrrrrrrrr!!!! Ft. BIRB. Just uploaded a new youtube video where I paintover your guys' work while giving life changing roasts and advice. 😃 go check it out!. Omg also BIRB PLUSHIES ARE LAUNCHING NOVEMBER 23rd! Patreon members will be getting early access! Limited numbers!! Shoutout to the patrons on patreon who got an early access birb, we sold out of our entire early access stock", position: 17)
snow.photo.attach(io: snow_file, filename: "snow.jpg", content_type: "image/jpg")
snow.save!

puts "Issue on Atwork 6"

moon = Project.new(category: Project::CATEGORIES[1], title: "Moon", collab: musician.nickname, video_url: "", music_url: "", user_id: artwork_artist.id, description: "This artwork project is a vibrant and captivating exploration of color and texture. Featuring bold hues and intricate details, the artworks showcase a unique vision of the world. The artist plays with materials to create dynamic pieces that combine traditional techniques with modern production values. From abstract paintings to three-dimensional sculptures, each artwork is an inviting and immersive experience. Every piece captures a unique moment that reveals something new with each viewing. Whether you're looking to add a touch of artistry to your home or office space, this artwork project promises to deliver something special and truly unforgettable.

This artwork project is a masterclass in versatility, showcasing the artist's skill in depicting various scenes and moods. From vibrant cityscapes to soft and dreamlike landscapes, the artworks offer something for all tastes. Each piece is infused with emotion, forming an intimate relationship between the viewer and the artwork. With each passing day, the artist continues to create new works that capture life’s special moments and tell stories of love, joy, and sorrow. Join this artwork project today and let the artist take you on a journey of discovery and exploration.

Every piece from this artwork project is a remarkable and unique experience. Whether you're looking for something abstract and thought-provoking or simple and beautiful, this artwork project has something for everyone. With its bold colors, intriguing details, and captivating stories, it’s no wonder why this artwork project continues to be so popular. Be sure to check out this artwork project for yourself - you won't be disappointed.", position: 18)
moon.photo.attach(io: moon_file, filename: "artwork-moon.webp", content_type: "image/webp")
moon.save!

puts "Issue on Atwork 7"

troglodyte = Project.new(category: Project::CATEGORIES[1], title: "Troglodyte", collab: video_artist.nickname, video_url: "", music_url: "", user_id: artwork_artist.id, description: "This artwork project is a vibrant and captivating exploration of color and texture. Featuring bold hues and intricate details, the artworks showcase a unique vision of the world. The artist plays with materials to create dynamic pieces that combine traditional techniques with modern production values. From abstract paintings to three-dimensional sculptures, each artwork is an inviting and immersive experience. Every piece captures a unique moment that reveals something new with each viewing. Whether you're looking to add a touch of artistry to your home or office space, this artwork project promises to deliver something special and truly unforgettable.

This artwork project is a masterclass in versatility, showcasing the artist's skill in depicting various scenes and moods. From vibrant cityscapes to soft and dreamlike landscapes, the artworks offer something for all tastes. Each piece is infused with emotion, forming an intimate relationship between the viewer and the artwork. With each passing day, the artist continues to create new works that capture life’s special moments and tell stories of love, joy, and sorrow. Join this artwork project today and let the artist take you on a journey of discovery and exploration.

Every piece from this artwork project is a remarkable and unique experience. Whether you're looking for something abstract and thought-provoking or simple and beautiful, this artwork project has something for everyone. With its bold colors, intriguing details, and captivating stories, it’s no wonder why this artwork project continues to be so popular. Be sure to check out this artwork project for yourself - you won't be disappointed.", position: 19)
troglodyte.photo.attach(io: troglodyte_file, filename: "artwork-troglodyte.webp", content_type: "image/webp")
troglodyte.save!

puts "Issue on Atwork 8"

study = Project.new(category: Project::CATEGORIES[1], title: "Study", collab: video_artist.nickname, video_url: "", music_url: "", user_id: artwork_artist_sam.id, description: "Study, focusing on some lighting and expression work! Reminder to draw today 😀🔪

BIRBS HAVE ARRIVED! Happy to announce that our birb plushies are NOW available on my merch store samdoesarts.com! Head over and adopt one today 🥹 stock is limited! Winterrrrrrrrr!!!! Ft. BIRB. Just uploaded a new youtube video where I paintover your guys' work while giving life changing roasts and advice. 😃 go check it out!. Omg also BIRB PLUSHIES ARE LAUNCHING NOVEMBER 23rd! Patreon members will be getting early access! Limited numbers!! Shoutout to the patrons on patreon who got an early access birb, we sold out of our entire early access stock 🫶

Tessa! This is the hardest angle for the face and u cant tell me otherwise! Did this one in procreate, i'm trying to expand my procreate brush library rn so I did some brush exploration! What are your guys' favourite default procreate brushes? Gimme recommendations pls. Nose and mouth stylization tutorial this month on my patreon :)

Happy to announce that our birb plushies are NOW available on my merch store samdoesarts.com! Head over and adopt one today 🥹 stock is limited! Winterrrrrrrrr!!!! Ft. BIRB. Just uploaded a new youtube video where I paintover your guys' work while giving life changing roasts and advice. 😃 go check it out!. Omg also BIRB PLUSHIES ARE LAUNCHING NOVEMBER 23rd! Patreon members will be getting early access! Limited numbers!! Shoutout to the patrons on patreon who got an early access birb, we sold out of our entire early access stock", position: 20)
study.photo.attach(io: study_file, filename: "study.jpg", content_type: "image/jpg")
study.save!

puts "Issue on Atwork 9"

more_studies = Project.new(category: Project::CATEGORIES[1], title: "More study", collab: artwork_artist.nickname, video_url: "", music_url: "", user_id: artwork_artist_sam.id, description: "This artwork project is a vibrant and captivating exploration of color and texture. Featuring bold hues and intricate details, the artworks showcase a unique vision of the world. The artist plays with materials to create dynamic pieces that combine traditional techniques with modern production values. From abstract paintings to three-dimensional sculptures, each artwork is an inviting and immersive experience. Every piece captures a unique moment that reveals something new with each viewing. Whether you're looking to add a touch of artistry to your home or office space, this artwork project promises to deliver something special and truly unforgettable.

This artwork project is a masterclass in versatility, showcasing the artist's skill in depicting various scenes and moods. From vibrant cityscapes to soft and dreamlike landscapes, the artworks offer something for all tastes. Each piece is infused with emotion, forming an intimate relationship between the viewer and the artwork. With each passing day, the artist continues to create new works that capture life’s special moments and tell stories of love, joy, and sorrow. Join this artwork project today and let the artist take you on a journey of discovery and exploration.

Every piece from this artwork project is a remarkable and unique experience. Whether you're looking for something abstract and thought-provoking or simple and beautiful, this artwork project has something for everyone. With its bold colors, intriguing details, and captivating stories, it’s no wonder why this artwork project continues to be so popular. Be sure to check out this artwork project for yourself - you won't be disappointed.", position: 21)
more_studies.photo.attach(io: more_studies_file, filename: "more_studies.jpg", content_type: "image/jpg")
more_studies.save!

puts "Issue on Atwork 10"

puts "Creating likes..."

Like.create!(user_id: video_artist.id, project_id: music_1.id)
Like.create!(user_id: artwork_artist.id, project_id: music_1.id)

Like.create!(user_id: musician.id, project_id: music_2.id)
Like.create!(user_id: artwork_artist.id, project_id: music_2.id)

Like.create!(user_id: video_artist.id, project_id: music_3.id)

Like.create!(user_id: video_artist.id, project_id: music_4.id)
Like.create!(user_id: artwork_artist.id, project_id: music_4.id)

Like.create!(user_id: musician.id, project_id: music_5.id)
Like.create!(user_id: video_artist.id, project_id: music_5.id)
Like.create!(user_id: artwork_artist.id, project_id: music_5.id)

Like.create!(user_id: video_artist.id, project_id: video_1.id)
Like.create!(user_id: artwork_artist.id, project_id: video_1.id)

Like.create!(user_id: musician.id, project_id: video_2.id)

Like.create!(user_id: video_artist.id, project_id: tesseract.id)
Like.create!(user_id: artwork_artist.id, project_id: tesseract.id)

Like.create!(user_id: video_artist.id, project_id: hyperspace.id)

Like.create!(user_id: video_artist.id, project_id: planetarium.id)
Like.create!(user_id: artwork_artist.id, project_id: planetarium.id)

Like.create!(user_id: musician.id, project_id: moon.id)
Like.create!(user_id: video_artist.id, project_id: moon.id)
Like.create!(user_id: artwork_artist.id, project_id: moon.id)

# add

Like.create!(user_id: video_artist.id, project_id: sunset.id)

Like.create!(user_id: video_artist.id, project_id: snow.id)
Like.create!(user_id: artwork_artist.id, project_id: sunset.id)

Like.create!(user_id: musician.id, project_id: sunset.id)
Like.create!(user_id: video_artist.id, project_id: study.id)
Like.create!(user_id: artwork_artist.id, project_id: sunset.id)

Like.create!(user_id: video_artist.id, project_id: hyperspace.id)

Like.create!(user_id: artwork_artist_sam.id, project_id: snow.id)
Like.create!(user_id: artwork_artist_sam.id, project_id: sunset.id)

Like.create!(user_id: artwork_artist_sam.id, project_id: tesseract.id)
Like.create!(user_id: artwork_artist_sam.id, project_id: video_2.id)
Like.create!(user_id: artwork_artist_sam.id, project_id: video_1.id)

puts "Seed is done!"
