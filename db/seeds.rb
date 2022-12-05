# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).

require 'open-uri'

puts "Launching the seed"
puts "Destroying..."

Like.destroy_all
Project.destroy_all
User.destroy_all

puts "Creating users..."

musician = User.create!(nickname: "Chris Shards", first_name: "Chris", last_name: "Shards", email: "chris@gmail.com", password: "123456", description: "Chris Shard is an American musician, singer, songwriter and record producer. He is the founding and lead member of the musical group Black Eyed Peas.
As a solo artist, Chris Shard has released four albums, beginning with Lost Change (2001), through Atlantic Records. His second solo outing, Must B 21, was released on September 23, 2003.")

video_artist = User.create!(nickname: "Howard Wimshurst", first_name: "Howard", last_name: "Wimshurst", email: "howard@gmail.com", password: "123456", description: "Howard Wimshurst is an award-winning filmmaker and artist who specializes in hand-drawn animation. His background in animation spans 10 years, starting with independent filmmaking from his bedroom, progressing to a foundation degree in art and design, then a Bachelor of Arts degree in Animation.")

artwork_artist = User.create!(nickname: "Novans", first_name: "Novans", last_name: "Adikresna", email: "novans@gmail.com", password: "123456", description: "My name is Novans. I was born in Surabaya, Indonesia. Most of my works here were done for my personal hobby, but a few of them are for commercial projects. Freelance..?? Maybe, contact me for freelance possibillities.")

artwork_artist_sam = User.create!(nickname: "Samdoesart", first_name: "Sam", last_name: "Adams", email: "sam@gmail.com", password: "123456", description: "Hello! My name is Sam! I'm a 24yo digital artist based in Toronto. I love to paint! Art has actually been a passion of mine for most of my life!

I stopped learning art after high school, kept it as a side hobby but I didn't make any real attempts to improve and get better.")

puts "Creating projects..."

album_file = URI.open("https://res.cloudinary.com/dal73z4cj/image/upload/v1670259397/chris_album_ojuvrb.jpg")
albumbis_file = URI.open("https://res.cloudinary.com/dal73z4cj/image/upload/v1670260757/chris_albumbis_pyzbsr.jpg")
album2_file = URI.open("https://res.cloudinary.com/dal73z4cj/image/upload/v1670259397/chris_album2_apqg8r.jpg")
album2bis_file = URI.open("https://res.cloudinary.com/dal73z4cj/image/upload/v1670260757/chris_album2bis_khchoj.jpg")
album3_file = URI.open("https://res.cloudinary.com/dal73z4cj/image/upload/v1670259397/chris_album3_t1efww.jpg")

# 1. MUSIC

music_1 = Project.new(category: Project::CATEGORIES[0], title: "Always With You", collab: "#{artwork_artist.nickname} and #{video_artist.nickname}", video_url: "", music_url: "https://open.spotify.com/track/1JBqbYJKV57GBuSLl3j3TN?si=07cf0f8e9deb4772", user_id: musician.id, description: "First snow ❄️ im thinking about doing more environments this month, gotta shake off the rust. Process is recorded and I'll be uploading it to patreon in the coming week! Took about 2 hours total. Value study. Based on our next Patreon tutorial for Values! 🫶 this is like a blend of realistic rendering and very stylized proportions, pretty fun to experiment with. Snow. My drawing vibes really do be changing with the seasons. This was a fun study, really satisfying process to get the snow effect down. Didnt record this process but if u guys are interested in my workflow i post process videos on patreon! Thanks to everyone who is able to support 🫶.
AND BIRBS ARE SOLD OUT! But we still have some birb pins in stock! Merch store link in my bio :) thank u to everyone who adopted a birb!

BIRBS HAVE ARRIVED! Happy to announce that our birb plushies are NOW available on my merch store samdoesarts.com! Head over and adopt one today 🥹 stock is limited! Winterrrrrrrrr!!!! Ft. BIRB. Just uploaded a new youtube video where I paintover your guys' work while giving life changing roasts and advice. 😃 go check it out!. Omg also BIRB PLUSHIES ARE LAUNCHING NOVEMBER 23rd! Patreon members will be getting early access! Limited numbers!! Shoutout to the patrons on patreon who got an early access birb, we sold out of our entire early access stock 🫶")
music_1.photo.attach(io: album_file, filename: "album.jpg", content_type: "image/jpg")
music_1.save!

music_2 = Project.new(category: Project::CATEGORIES[0], title: "Salt Lake Seagull", collab: "#{artwork_artist.nickname} and #{video_artist.nickname}", video_url: "", music_url: "https://open.spotify.com/track/4WvAR6CHlqVjbUupNjkmcb?si=07cf0f8e9deb4772", user_id: musician.id, description: "First snow ❄️ im thinking about doing more environments this month, gotta shake off the rust. Process is recorded and I'll be uploading it to patreon in the coming week! Took about 2 hours total. Value study. Based on our next Patreon tutorial for Values! 🫶 this is like a blend of realistic rendering and very stylized proportions, pretty fun to experiment with. Snow. My drawing vibes really do be changing with the seasons. This was a fun study, really satisfying process to get the snow effect down. Didnt record this process but if u guys are interested in my workflow i post process videos on patreon! Thanks to everyone who is able to support 🫶.
AND BIRBS ARE SOLD OUT! But we still have some birb pins in stock! Merch store link in my bio :) thank u to everyone who adopted a birb!

BIRBS HAVE ARRIVED! Happy to announce that our birb plushies are NOW available on my merch store samdoesarts.com! Head over and adopt one today 🥹 stock is limited! Winterrrrrrrrr!!!! Ft. BIRB. Just uploaded a new youtube video where I paintover your guys' work while giving life changing roasts and advice. 😃 go check it out!. Omg also BIRB PLUSHIES ARE LAUNCHING NOVEMBER 23rd! Patreon members will be getting early access! Limited numbers!! Shoutout to the patrons on patreon who got an early access birb, we sold out of our entire early access stock 🫶")
music_2.photo.attach(io: album3_file, filename: "album3.jpg", content_type: "image/jpg")
music_2.save!

music_3 = Project.new(category: Project::CATEGORIES[0], title: "Heavy Heart", collab: "#{artwork_artist.nickname} and #{video_artist.nickname}", video_url: "", music_url: "https://open.spotify.com/track/2iqXKIikPBMKMrIISWVEEE?si=07cf0f8e9deb4772", user_id: musician.id, description: "First snow ❄️ im thinking about doing more environments this month, gotta shake off the rust. Process is recorded and I'll be uploading it to patreon in the coming week! Took about 2 hours total. Value study. Based on our next Patreon tutorial for Values! 🫶 this is like a blend of realistic rendering and very stylized proportions, pretty fun to experiment with. Snow. My drawing vibes really do be changing with the seasons. This was a fun study, really satisfying process to get the snow effect down. Didnt record this process but if u guys are interested in my workflow i post process videos on patreon! Thanks to everyone who is able to support 🫶.
AND BIRBS ARE SOLD OUT! But we still have some birb pins in stock! Merch store link in my bio :) thank u to everyone who adopted a birb!

BIRBS HAVE ARRIVED! Happy to announce that our birb plushies are NOW available on my merch store samdoesarts.com! Head over and adopt one today 🥹 stock is limited! Winterrrrrrrrr!!!! Ft. BIRB. Just uploaded a new youtube video where I paintover your guys' work while giving life changing roasts and advice. 😃 go check it out!. Omg also BIRB PLUSHIES ARE LAUNCHING NOVEMBER 23rd! Patreon members will be getting early access! Limited numbers!! Shoutout to the patrons on patreon who got an early access birb, we sold out of our entire early access stock 🫶")
music_3.photo.attach(io: album2_file, filename: "album2.jpg", content_type: "image/jpg")
music_3.save!

music_4 = Project.new(category: Project::CATEGORIES[0], title: "Ghetto Dreamin'", collab: artwork_artist.nickname, video_url: "", music_url: "https://open.spotify.com/track/2ETiOcuJDgUwaXLNZKnZrM?si=07cf0f8e9deb4772", user_id: musician.id, description: "First snow ❄️ im thinking about doing more environments this month, gotta shake off the rust. Process is recorded and I'll be uploading it to patreon in the coming week! Took about 2 hours total. Value study. Based on our next Patreon tutorial for Values! 🫶 this is like a blend of realistic rendering and very stylized proportions, pretty fun to experiment with. Snow. My drawing vibes really do be changing with the seasons. This was a fun study, really satisfying process to get the snow effect down. Didnt record this process but if u guys are interested in my workflow i post process videos on patreon! Thanks to everyone who is able to support 🫶.
AND BIRBS ARE SOLD OUT! But we still have some birb pins in stock! Merch store link in my bio :) thank u to everyone who adopted a birb!

BIRBS HAVE ARRIVED! Happy to announce that our birb plushies are NOW available on my merch store samdoesarts.com! Head over and adopt one today 🥹 stock is limited! Winterrrrrrrrr!!!! Ft. BIRB. Just uploaded a new youtube video where I paintover your guys' work while giving life changing roasts and advice. 😃 go check it out!. Omg also BIRB PLUSHIES ARE LAUNCHING NOVEMBER 23rd! Patreon members will be getting early access! Limited numbers!! Shoutout to the patrons on patreon who got an early access birb, we sold out of our entire early access stock 🫶")
music_4.photo.attach(io: album2bis_file, filename: "album2bis.jpg", content_type: "image/jpg")
music_4.save!

music_5 = Project.new(category: Project::CATEGORIES[0], title: "Between The Waves", collab: "", video_url: "", music_url: "https://open.spotify.com/track/5lz7FCk3apkROsI6hctQLU?si=07cf0f8e9deb4772", user_id: musician.id, description: "First snow ❄️ im thinking about doing more environments this month, gotta shake off the rust. Process is recorded and I'll be uploading it to patreon in the coming week! Took about 2 hours total. Value study. Based on our next Patreon tutorial for Values! 🫶 this is like a blend of realistic rendering and very stylized proportions, pretty fun to experiment with. Snow. My drawing vibes really do be changing with the seasons. This was a fun study, really satisfying process to get the snow effect down. Didnt record this process but if u guys are interested in my workflow i post process videos on patreon! Thanks to everyone who is able to support 🫶.
AND BIRBS ARE SOLD OUT! But we still have some birb pins in stock! Merch store link in my bio :) thank u to everyone who adopted a birb!

BIRBS HAVE ARRIVED! Happy to announce that our birb plushies are NOW available on my merch store samdoesarts.com! Head over and adopt one today 🥹 stock is limited! Winterrrrrrrrr!!!! Ft. BIRB. Just uploaded a new youtube video where I paintover your guys' work while giving life changing roasts and advice. 😃 go check it out!. Omg also BIRB PLUSHIES ARE LAUNCHING NOVEMBER 23rd! Patreon members will be getting early access! Limited numbers!! Shoutout to the patrons on patreon who got an early access birb, we sold out of our entire early access stock 🫶")
music_5.photo.attach(io: albumbis_file, filename: "albumbis.jpg", content_type: "image/jpg")
music_5.save!

puts "Musics are done!"

animation_showreel_file = URI.open("https://res.cloudinary.com/dal73z4cj/image/upload/v1670262234/animation_showreel_iiwjfe.jpg")
encounter_file = URI.open("https://res.cloudinary.com/dal73z4cj/image/upload/v1670262235/encounter_idlsoc.jpg")
danse_yokai_file = URI.open("https://res.cloudinary.com/dal73z4cj/image/upload/v1670262234/danse_of_the_yokai_iegm5w.jpg")
showreel_file = URI.open("https://res.cloudinary.com/dal73z4cj/image/upload/v1670262235/showreel_kmtgdz.jpg")
animation_reel_file = URI.open("https://res.cloudinary.com/dal73z4cj/image/upload/v1670262234/animation_reel_j3ss0u.jpg")

# 2. VIDEO ART
video_1 = Project.new(category: Project::CATEGORIES[2], title: "Flying in the Sky", collab: musician.nickname, video_url: "https://youtu.be/9Z4TiA5JH_0", music_url: "", user_id: video_artist.id, description: "BIRBS HAVE ARRIVED! Happy to announce that our birb plushies are NOW available on my merch store samdoesarts.com! Head over and adopt one today 🥹 stock is limited! Winterrrrrrrrr!!!! Ft. BIRB. Just uploaded a new youtube video where I paintover your guys' work while giving life changing roasts and advice. 😃 go check it out!. Omg also BIRB PLUSHIES ARE LAUNCHING NOVEMBER 23rd! Patreon members will be getting early access! Limited numbers!! Shoutout to the patrons on patreon who got an early access birb, we sold out of our entire early access stock 🫶

BOOOOOOORRRRB! 🐔 Birb plushies will be Available Nov 23, worldwide shipping, very limited! I'll keep you guys updated as we approach launch day! Patrons on patreon will be getting early access! :)

Learning to use cooler tones. I find myself being really comfortable in the warm range but hardly ever stepping out of it. So I just wanted to try out a slightly less conventional lighting scenario for myself. I think the colours play into the mood a lot. Hope u like! 😗 check out my patreon for our monthly tutorial!

Kara 🫶 this started as a simple sunlight + background study piece referenced from @makenzie_raine but it kinda took on a life of its own. 😗 check out my patreon this month for our new advanced tutorial on character shapes and flow 🫶")
video_1.photo.attach(io: animation_showreel_file, filename: "animation_showreel.jpg", content_type: "image/jpg")
video_1.save!

video_2 = Project.new(category: Project::CATEGORIES[2], title: "Dance of the Yōkai", collab: musician.nickname, video_url: "https://youtu.be/piQpugWN2Xw", music_url: "", user_id: video_artist.id, description: "First snow ❄️ im thinking about doing more environments this month, gotta shake off the rust. Process is recorded and I'll be uploading it to patreon in the coming week! Took about 2 hours total. Value study. Based on our next Patreon tutorial for Values! 🫶 this is like a blend of realistic rendering and very stylized proportions, pretty fun to experiment with. Snow. My drawing vibes really do be changing with the seasons. This was a fun study, really satisfying process to get the snow effect down. Didnt record this process but if u guys are interested in my workflow i post process videos on patreon! Thanks to everyone who is able to support 🫶.
AND BIRBS ARE SOLD OUT! But we still have some birb pins in stock! Merch store link in my bio :) thank u to everyone who adopted a birb!

BIRBS HAVE ARRIVED! Happy to announce that our birb plushies are NOW available on my merch store samdoesarts.com! Head over and adopt one today 🥹 stock is limited! Winterrrrrrrrr!!!! Ft. BIRB. Just uploaded a new youtube video where I paintover your guys' work while giving life changing roasts and advice. 😃 go check it out!. Omg also BIRB PLUSHIES ARE LAUNCHING NOVEMBER 23rd! Patreon members will be getting early access! Limited numbers!! Shoutout to the patrons on patreon who got an early access birb, we sold out of our entire early access stock 🫶")
video_2.photo.attach(io: danse_yokai_file, filename: "danse_of_the_yokai.jpg", content_type: "image/jpg")
video_2.save!

video_3 = Project.new(category: Project::CATEGORIES[2], title: "Winter Hunting", collab: musician.nickname, video_url: "https://youtu.be/RDfu4iEeyro", music_url: "", user_id: video_artist.id, description: "BIRBS HAVE ARRIVED! Happy to announce that our birb plushies are NOW available on my merch store samdoesarts.com! Head over and adopt one today 🥹 stock is limited! Winterrrrrrrrr!!!! Ft. BIRB. Just uploaded a new youtube video where I paintover your guys' work while giving life changing roasts and advice. 😃 go check it out!. Omg also BIRB PLUSHIES ARE LAUNCHING NOVEMBER 23rd! Patreon members will be getting early access! Limited numbers!! Shoutout to the patrons on patreon who got an early access birb, we sold out of our entire early access stock 🫶

BOOOOOOORRRRB! 🐔 Birb plushies will be Available Nov 23, worldwide shipping, very limited! I'll keep you guys updated as we approach launch day! Patrons on patreon will be getting early access! :)

Learning to use cooler tones. I find myself being really comfortable in the warm range but hardly ever stepping out of it. So I just wanted to try out a slightly less conventional lighting scenario for myself. I think the colours play into the mood a lot. Hope u like! 😗 check out my patreon for our monthly tutorial!

Kara 🫶 this started as a simple sunlight + background study piece referenced from @makenzie_raine but it kinda took on a life of its own. 😗 check out my patreon this month for our new advanced tutorial on character shapes and flow 🫶")
video_3.photo.attach(io: encounter_file, filename: "encounter.jpg", content_type: "image/jpg")
video_3.save!

video_4 = Project.new(category: Project::CATEGORIES[2], title: "Lines Animation", collab: musician.nickname, video_url: "https://youtu.be/qMtsaIiwiaA", music_url: "", user_id: video_artist.id, description: "First snow ❄️ im thinking about doing more environments this month, gotta shake off the rust. Process is recorded and I'll be uploading it to patreon in the coming week! Took about 2 hours total. Value study. Based on our next Patreon tutorial for Values! 🫶 this is like a blend of realistic rendering and very stylized proportions, pretty fun to experiment with. Snow. My drawing vibes really do be changing with the seasons. This was a fun study, really satisfying process to get the snow effect down. Didnt record this process but if u guys are interested in my workflow i post process videos on patreon! Thanks to everyone who is able to support 🫶.
AND BIRBS ARE SOLD OUT! But we still have some birb pins in stock! Merch store link in my bio :) thank u to everyone who adopted a birb!

BIRBS HAVE ARRIVED! Happy to announce that our birb plushies are NOW available on my merch store samdoesarts.com! Head over and adopt one today 🥹 stock is limited! Winterrrrrrrrr!!!! Ft. BIRB. Just uploaded a new youtube video where I paintover your guys' work while giving life changing roasts and advice. 😃 go check it out!. Omg also BIRB PLUSHIES ARE LAUNCHING NOVEMBER 23rd! Patreon members will be getting early access! Limited numbers!! Shoutout to the patrons on patreon who got an early access birb, we sold out of our entire early access stock 🫶")
video_4.photo.attach(io: showreel_file, filename: "showreel.jpg", content_type: "image/jpg")
video_4.save!

video_5 = Project.create!(category: Project::CATEGORIES[2], title: "Rough Animation", collab: "", video_url: "https://youtu.be/upzThAC2A_s", music_url: "", user_id: video_artist.id, description: "BIRBS HAVE ARRIVED! Happy to announce that our birb plushies are NOW available on my merch store samdoesarts.com! Head over and adopt one today 🥹 stock is limited! Winterrrrrrrrr!!!! Ft. BIRB. Just uploaded a new youtube video where I paintover your guys' work while giving life changing roasts and advice. 😃 go check it out!. Omg also BIRB PLUSHIES ARE LAUNCHING NOVEMBER 23rd! Patreon members will be getting early access! Limited numbers!! Shoutout to the patrons on patreon who got an early access birb, we sold out of our entire early access stock 🫶

BOOOOOOORRRRB! 🐔 Birb plushies will be Available Nov 23, worldwide shipping, very limited! I'll keep you guys updated as we approach launch day! Patrons on patreon will be getting early access! :)

Learning to use cooler tones. I find myself being really comfortable in the warm range but hardly ever stepping out of it. So I just wanted to try out a slightly less conventional lighting scenario for myself. I think the colours play into the mood a lot. Hope u like! 😗 check out my patreon for our monthly tutorial!

Kara 🫶 this started as a simple sunlight + background study piece referenced from @makenzie_raine but it kinda took on a life of its own. 😗 check out my patreon this month for our new advanced tutorial on character shapes and flow 🫶")
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

tesseract = Project.new(category: Project::CATEGORIES[1], title: "Tesseract", collab: musician.nickname, video_url: "", music_url: "", user_id: artwork_artist.id, description: "First snow ❄️ im thinking about doing more environments this month, gotta shake off the rust. Process is recorded and I'll be uploading it to patreon in the coming week! Took about 2 hours total. Value study. Based on our next Patreon tutorial for Values! 🫶 this is like a blend of realistic rendering and very stylized proportions, pretty fun to experiment with. Snow. My drawing vibes really do be changing with the seasons. This was a fun study, really satisfying process to get the snow effect down. Didnt record this process but if u guys are interested in my workflow i post process videos on patreon! Thanks to everyone who is able to support 🫶.
AND BIRBS ARE SOLD OUT! But we still have some birb pins in stock! Merch store link in my bio :) thank u to everyone who adopted a birb!

BIRBS HAVE ARRIVED! Happy to announce that our birb plushies are NOW available on my merch store samdoesarts.com! Head over and adopt one today 🥹 stock is limited! Winterrrrrrrrr!!!! Ft. BIRB. Just uploaded a new youtube video where I paintover your guys' work while giving life changing roasts and advice. 😃 go check it out!. Omg also BIRB PLUSHIES ARE LAUNCHING NOVEMBER 23rd! Patreon members will be getting early access! Limited numbers!! Shoutout to the patrons on patreon who got an early access birb, we sold out of our entire early access stock 🫶")
tesseract.photo.attach(io: tesseract_file, filename: "artwork-tesseract.webp", content_type: "image/webp")
tesseract.save!

hyperspace = Project.new(category: Project::CATEGORIES[1], title: "Hyperspace", collab: musician.nickname, video_url: "", music_url: "", user_id: artwork_artist.id, description: "BIRBS HAVE ARRIVED! Happy to announce that our birb plushies are NOW available on my merch store samdoesarts.com! Head over and adopt one today 🥹 stock is limited! Winterrrrrrrrr!!!! Ft. BIRB. Just uploaded a new youtube video where I paintover your guys' work while giving life changing roasts and advice. 😃 go check it out!. Omg also BIRB PLUSHIES ARE LAUNCHING NOVEMBER 23rd! Patreon members will be getting early access! Limited numbers!! Shoutout to the patrons on patreon who got an early access birb, we sold out of our entire early access stock 🫶

BOOOOOOORRRRB! 🐔 Birb plushies will be Available Nov 23, worldwide shipping, very limited! I'll keep you guys updated as we approach launch day! Patrons on patreon will be getting early access! :)

Learning to use cooler tones. I find myself being really comfortable in the warm range but hardly ever stepping out of it. So I just wanted to try out a slightly less conventional lighting scenario for myself. I think the colours play into the mood a lot. Hope u like! 😗 check out my patreon for our monthly tutorial!

Kara 🫶 this started as a simple sunlight + background study piece referenced from @makenzie_raine but it kinda took on a life of its own. 😗 check out my patreon this month for our new advanced tutorial on character shapes and flow 🫶")
hyperspace.photo.attach(io: hyperspace_file, filename: "artwork-hyperspace.webp", content_type: "image/webp")
hyperspace.save!

sunset = Project.new(category: Project::CATEGORIES[1], title: "Sunset", collab: "Will I am", video_url: "", music_url: "", user_id: artwork_artist_sam.id, description: "Sunset, focusing on some lighting and expression work! Reminder to draw today 😀🔪

BIRBS HAVE ARRIVED! Happy to announce that our birb plushies are NOW available on my merch store samdoesarts.com! Head over and adopt one today 🥹 stock is limited! Winterrrrrrrrr!!!! Ft. BIRB. Just uploaded a new youtube video where I paintover your guys' work while giving life changing roasts and advice. 😃 go check it out!. Omg also BIRB PLUSHIES ARE LAUNCHING NOVEMBER 23rd! Patreon members will be getting early access! Limited numbers!! Shoutout to the patrons on patreon who got an early access birb, we sold out of our entire early access stock 🫶

Tessa! This is the hardest angle for the face and u cant tell me otherwise! Did this one in procreate, i'm trying to expand my procreate brush library rn so I did some brush exploration! What are your guys' favourite default procreate brushes? Gimme recommendations pls. Nose and mouth stylization tutorial this month on my patreon :)

Happy to announce that our birb plushies are NOW available on my merch store samdoesarts.com! Head over and adopt one today 🥹 stock is limited! Winterrrrrrrrr!!!! Ft. BIRB. Just uploaded a new youtube video where I paintover your guys' work while giving life changing roasts and advice. 😃 go check it out!. Omg also BIRB PLUSHIES ARE LAUNCHING NOVEMBER 23rd! Patreon members will be getting early access! Limited numbers!! Shoutout to the patrons on patreon who got an early access birb, we sold out of our entire early access stock")
sunset.photo.attach(io: sunset_file, filename: "sunset.jpg", content_type: "image/jpg")
sunset.save!

planetarium = Project.new(category: Project::CATEGORIES[1], title: "Planetarium", collab: musician.nickname, video_url: "", music_url: "", user_id: artwork_artist.id, description: "Bout to enter my villain arc between ppl stealing my work through ai and my camera overheating 3 times in one shoot. Head over to my patreon or print shop to support my descent. Study, focusing on some lighting and expression work! Reminder to draw today 😀🔪
Check out my patreon for monthly tutorial and process vids! Love u guys 🫶
Yassifying some more characters!!! Check out the new youtube video to see the process! Link is up in my bio now 😗😗
Whoever recommended the 6B pencil in procreate thank u jesus lord bless ur little brain what a beautiful brush that is. Hope ur all doing well and drawing and making beautiful art today to share with the world
Tessa! This is the hardest angle for the face and u cant tell me otherwise! Did this one in procreate, i'm trying to expand my procreate brush library rn so I did some brush exploration! What are your guys' favourite default procreate brushes? Gimme recommendations pls. Nose and mouth stylization tutorial this month on my patreon :)
Happy to announce that our birb plushies are NOW available on my merch store samdoesarts.com! Head over and adopt one today 🥹 stock is limited! Winterrrrrrrrr!!!! Ft. BIRB. Just uploaded a new youtube video where I paintover your guys' work while giving life changing roasts and advice. 😃 go check it out!. Omg also BIRB PLUSHIES ARE LAUNCHING NOVEMBER 23rd! Patreon members will be getting early access! Limited numbers!! Shoutout to the patrons on patreon who got an early access birb, we sold out of our entire early access stock")
planetarium.photo.attach(io: planetarium_file, filename: "artwork-planetarium.webp", content_type: "image/webp")
planetarium.save!

snow = Project.new(category: Project::CATEGORIES[1], title: "Snow", collab: "Will I am", video_url: "", music_url: "", user_id: artwork_artist_sam.id, description: "Snow, focusing on some lighting and expression work! Reminder to draw today 😀🔪

BIRBS HAVE ARRIVED! Happy to announce that our birb plushies are NOW available on my merch store samdoesarts.com! Head over and adopt one today 🥹 stock is limited! Winterrrrrrrrr!!!! Ft. BIRB. Just uploaded a new youtube video where I paintover your guys' work while giving life changing roasts and advice. 😃 go check it out!. Omg also BIRB PLUSHIES ARE LAUNCHING NOVEMBER 23rd! Patreon members will be getting early access! Limited numbers!! Shoutout to the patrons on patreon who got an early access birb, we sold out of our entire early access stock 🫶

Tessa! This is the hardest angle for the face and u cant tell me otherwise! Did this one in procreate, i'm trying to expand my procreate brush library rn so I did some brush exploration! What are your guys' favourite default procreate brushes? Gimme recommendations pls. Nose and mouth stylization tutorial this month on my patreon :)

Happy to announce that our birb plushies are NOW available on my merch store samdoesarts.com! Head over and adopt one today 🥹 stock is limited! Winterrrrrrrrr!!!! Ft. BIRB. Just uploaded a new youtube video where I paintover your guys' work while giving life changing roasts and advice. 😃 go check it out!. Omg also BIRB PLUSHIES ARE LAUNCHING NOVEMBER 23rd! Patreon members will be getting early access! Limited numbers!! Shoutout to the patrons on patreon who got an early access birb, we sold out of our entire early access stock")
snow.photo.attach(io: snow_file, filename: "snow.jpg", content_type: "image/jpg")
snow.save!

moon = Project.new(category: Project::CATEGORIES[1], title: "Moon", collab: musician.nickname, video_url: "", music_url: "", user_id: artwork_artist.id, description: "BIRBS HAVE ARRIVED! Happy to announce that our birb plushies are NOW available on my merch store samdoesarts.com! Head over and adopt one today 🥹 stock is limited! Winterrrrrrrrr!!!! Ft. BIRB. Just uploaded a new youtube video where I paintover your guys' work while giving life changing roasts and advice. 😃 go check it out!. Omg also BIRB PLUSHIES ARE LAUNCHING NOVEMBER 23rd! Patreon members will be getting early access! Limited numbers!! Shoutout to the patrons on patreon who got an early access birb, we sold out of our entire early access stock 🫶

BOOOOOOORRRRB! 🐔 Birb plushies will be Available Nov 23, worldwide shipping, very limited! I'll keep you guys updated as we approach launch day! Patrons on patreon will be getting early access! :)

Learning to use cooler tones. I find myself being really comfortable in the warm range but hardly ever stepping out of it. So I just wanted to try out a slightly less conventional lighting scenario for myself. I think the colours play into the mood a lot. Hope u like! 😗 check out my patreon for our monthly tutorial!

Kara 🫶 this started as a simple sunlight + background study piece referenced from @makenzie_raine but it kinda took on a life of its own. 😗 check out my patreon this month for our new advanced tutorial on character shapes and flow 🫶")
moon.photo.attach(io: moon_file, filename: "artwork-moon.webp", content_type: "image/webp")
moon.save!

troglodyte = Project.new(category: Project::CATEGORIES[1], title: "Troglodyte", collab: "", video_url: "", music_url: "", user_id: artwork_artist.id, description: "First snow ❄️ im thinking about doing more environments this month, gotta shake off the rust. Process is recorded and I'll be uploading it to patreon in the coming week! Took about 2 hours total. Value study. Based on our next Patreon tutorial for Values! 🫶 this is like a blend of realistic rendering and very stylized proportions, pretty fun to experiment with. Snow. My drawing vibes really do be changing with the seasons. This was a fun study, really satisfying process to get the snow effect down. Didnt record this process but if u guys are interested in my workflow i post process videos on patreon! Thanks to everyone who is able to support 🫶.
AND BIRBS ARE SOLD OUT! But we still have some birb pins in stock! Merch store link in my bio :) thank u to everyone who adopted a birb!

BIRBS HAVE ARRIVED! Happy to announce that our birb plushies are NOW available on my merch store samdoesarts.com! Head over and adopt one today 🥹 stock is limited! Winterrrrrrrrr!!!! Ft. BIRB. Just uploaded a new youtube video where I paintover your guys' work while giving life changing roasts and advice. 😃 go check it out!. Omg also BIRB PLUSHIES ARE LAUNCHING NOVEMBER 23rd! Patreon members will be getting early access! Limited numbers!! Shoutout to the patrons on patreon who got an early access birb, we sold out of our entire early access stock 🫶")
troglodyte.photo.attach(io: troglodyte_file, filename: "artwork-troglodyte.webp", content_type: "image/webp")
troglodyte.save!

study = Project.new(category: Project::CATEGORIES[1], title: "Study", collab: "Will I am", video_url: "", music_url: "", user_id: artwork_artist_sam.id, description: "Study, focusing on some lighting and expression work! Reminder to draw today 😀🔪

BIRBS HAVE ARRIVED! Happy to announce that our birb plushies are NOW available on my merch store samdoesarts.com! Head over and adopt one today 🥹 stock is limited! Winterrrrrrrrr!!!! Ft. BIRB. Just uploaded a new youtube video where I paintover your guys' work while giving life changing roasts and advice. 😃 go check it out!. Omg also BIRB PLUSHIES ARE LAUNCHING NOVEMBER 23rd! Patreon members will be getting early access! Limited numbers!! Shoutout to the patrons on patreon who got an early access birb, we sold out of our entire early access stock 🫶

Tessa! This is the hardest angle for the face and u cant tell me otherwise! Did this one in procreate, i'm trying to expand my procreate brush library rn so I did some brush exploration! What are your guys' favourite default procreate brushes? Gimme recommendations pls. Nose and mouth stylization tutorial this month on my patreon :)

Happy to announce that our birb plushies are NOW available on my merch store samdoesarts.com! Head over and adopt one today 🥹 stock is limited! Winterrrrrrrrr!!!! Ft. BIRB. Just uploaded a new youtube video where I paintover your guys' work while giving life changing roasts and advice. 😃 go check it out!. Omg also BIRB PLUSHIES ARE LAUNCHING NOVEMBER 23rd! Patreon members will be getting early access! Limited numbers!! Shoutout to the patrons on patreon who got an early access birb, we sold out of our entire early access stock")
study.photo.attach(io: study_file, filename: "study.jpg", content_type: "image/jpg")
study.save!

more_studies = Project.new(category: Project::CATEGORIES[1], title: "More study", collab: "Chris Shard", video_url: "", music_url: "", user_id: artwork_artist_sam.id, description: "Study, focusing on some lighting and expression work! Reminder to draw today 😀🔪

BIRBS HAVE ARRIVED! Happy to announce that our birb plushies are NOW available on my merch store samdoesarts.com! Head over and adopt one today 🥹 stock is limited! Winterrrrrrrrr!!!! Ft. BIRB. Just uploaded a new youtube video where I paintover your guys' work while giving life changing roasts and advice. 😃 go check it out!. Omg also BIRB PLUSHIES ARE LAUNCHING NOVEMBER 23rd! Patreon members will be getting early access! Limited numbers!! Shoutout to the patrons on patreon who got an early access birb, we sold out of our entire early access stock 🫶

Tessa! This is the hardest angle for the face and u cant tell me otherwise! Did this one in procreate, i'm trying to expand my procreate brush library rn so I did some brush exploration! What are your guys' favourite default procreate brushes? Gimme recommendations pls. Nose and mouth stylization tutorial this month on my patreon :)

Happy to announce that our birb plushies are NOW available on my merch store samdoesarts.com! Head over and adopt one today 🥹 stock is limited! Winterrrrrrrrr!!!! Ft. BIRB. Just uploaded a new youtube video where I paintover your guys' work while giving life changing roasts and advice. 😃 go check it out!. Omg also BIRB PLUSHIES ARE LAUNCHING NOVEMBER 23rd! Patreon members will be getting early access! Limited numbers!! Shoutout to the patrons on patreon who got an early access birb, we sold out of our entire early access stock")
more_studies.photo.attach(io: more_studies_file, filename: "more_studies.jpg", content_type: "image/jpg")
more_studies.save!

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
