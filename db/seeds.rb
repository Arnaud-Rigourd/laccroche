# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).

require 'open-uri'

lorem_ipsum_long = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis viverra nec metus sit amet iaculis. Ut at tincidunt orci, finibus posuere urna. Duis volutpat metus nec purus egestas aliquet. Duis sit amet magna at odio accumsan blandit. Morbi vel tellus at nunc mattis volutpat ac sed justo. Aenean gravida dapibus tellus, vel varius lectus lacinia id. Donec ac sagittis eros. Maecenas eu cursus tellus. Mauris magna risus, elementum sed odio sed, molestie suscipit dolor. Suspendisse gravida dolor metus, nec tempor lorem pulvinar ultrices."
lorem_ipsum_medium = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis viverra nec metus sit amet iaculis. Ut at tincidunt orci, finibus posuere urna. Duis volutpat metus nec purus egestas aliquet. Duis sit amet magna at odio accumsan blandit."
lorem_ipsum_short = "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit."

puts "Launching the seed"
puts "Destroying..."

User.destroy_all
Project.destroy_all
Like.destroy_all

puts "Creating users..."

music_video_artist = User.create!(nickname: "Chris Shards", first_name: "Chris", last_name: "Shards", email: "chris@gmail.com", password: "123456", description: lorem_ipsum_short)
motion_design_artist = User.create!(nickname: "Howard Wimshurst", first_name: "Howard", last_name: "Wimshurst", email: "howard@gmail.com", password: "123456", description: "Award winning filmmaker and artist who specializes in hand-drawn animation. 2D animator obsessed with the way things move.")
artwork_artist = User.create!(nickname: "Novans Adikresna", first_name: "Novans", last_name: "Adikresna", email: "novans@gmail.com", password: "123456", description: "I made this work for a music album or cover art, with a modern concept and a touch of futuristic and sci-fi themes. I play with lines, colors and dimensions. Hope you like it, enjoy!")

puts "Creating projects..."

Project.create!(category: "Music Video", title: "Always With You", collab: "#{artwork_artist.nickname} and #{motion_design_artist.nickname}", video_url: "", music_url: "https://open.spotify.com/track/1JBqbYJKV57GBuSLl3j3TN?si=32460687f8a84bcd", user_id: music_video_artist.id, description: lorem_ipsum_medium)
Project.create!(category: "Music Video", title: "Salt Lake Seagull", collab: "#{artwork_artist.nickname} and #{motion_design_artist.nickname}", video_url: "", music_url: "https://open.spotify.com/track/4WvAR6CHlqVjbUupNjkmcb?si=581fa21f49db4649", user_id: music_video_artist.id, description: lorem_ipsum_medium)
Project.create!(category: "Music Video", title: "Heavy Heart", collab: "#{artwork_artist.nickname} and #{motion_design_artist.nickname}", video_url: "", music_url: "https://open.spotify.com/track/2iqXKIikPBMKMrIISWVEEE?si=8373d914b76a43d1", user_id: music_video_artist.id, description: lorem_ipsum_medium)
Project.create!(category: "Music Video", title: "Ghetto Dreamin'", collab: artwork_artist.nickname, video_url: "", music_url: "https://open.spotify.com/track/2ETiOcuJDgUwaXLNZKnZrM?si=29873eb34b0b4ccc", user_id: music_video_artist.id, description: lorem_ipsum_medium)
Project.create!(category: "Music Video", title: "Between The Waves", collab: "", video_url: "", music_url: "https://open.spotify.com/track/5lz7FCk3apkROsI6hctQLU?si=5e2a84d453ff4acc", user_id: music_video_artist.id, description: lorem_ipsum_medium)

Project.create!(category: "Motion Design", title: "Flying in the Sky", collab: music_video_artist.nickname, video_url: "https://youtu.be/9Z4TiA5JH_0", music_url: "", user_id: motion_design_artist.id, description: lorem_ipsum_medium)
Project.create!(category: "Motion Design", title: "Dance of the Yōkai", collab: music_video_artist.nickname, video_url: "https://youtu.be/piQpugWN2Xw", music_url: "", user_id: motion_design_artist.id, description: lorem_ipsum_medium)
Project.create!(category: "Motion Design", title: "Winter Hunting", collab: music_video_artist.nickname, video_url: "https://youtu.be/RDfu4iEeyro", music_url: "", user_id: motion_design_artist.id, description: lorem_ipsum_medium)
Project.create!(category: "Motion Design", title: "Lines Animation", collab: music_video_artist.nickname, video_url: "https://youtu.be/qMtsaIiwiaA", music_url: "", user_id: motion_design_artist.id, description: lorem_ipsum_medium)
Project.create!(category: "Motion Design", title: "Rough Animation", collab: "", video_url: "https://youtu.be/upzThAC2A_s", music_url: "", user_id: motion_design_artist.id, description: lorem_ipsum_medium)

tesseract_file = URI.open("https://res.cloudinary.com/ducykclj8/image/upload/v1669753289/l-accroche/artwork-tesseract_twl56v.webp")
hyperspace_file = URI.open("https://res.cloudinary.com/ducykclj8/image/upload/v1669753289/l-accroche/artwork-hyperspace_lboe8r.webp")
planetarium_file = URI.open("https://res.cloudinary.com/ducykclj8/image/upload/v1669753289/l-accroche/artwork-planetariumwebp_jrjfqd.webp")
moon_file = URI.open("https://res.cloudinary.com/ducykclj8/image/upload/v1669753289/l-accroche/artwork-moon_r1j4tj.webp")
troglodyte_file = URI.open("https://res.cloudinary.com/ducykclj8/image/upload/v1669753289/l-accroche/artwork-troglodyte_tpqcdo.webp")

tesseract = Project.new(category: "Artwork", title: "Tesseract", collab: music_video_artist.nickname, video_url: "", music_url: "", user_id: artwork_artist.id, description: lorem_ipsum_medium)
tesseract.photo.attach(io: tesseract_file, filename: "artwork-tesseract.webp", content_type: "image/webp")
tesseract.save!

hyperspace = Project.new(category: "Artwork", title: "Hyperspace", collab: music_video_artist.nickname, video_url: "", music_url: "", user_id: artwork_artist.id, description: lorem_ipsum_medium)
hyperspace.photo.attach(io: hyperspace_file, filename: "artwork-hyperspace.webp", content_type: "image/webp")
hyperspace.save!

planetarium = Project.new(category: "Artwork", title: "Planetarium", collab: music_video_artist.nickname, video_url: "", music_url: "", user_id: artwork_artist.id, description: lorem_ipsum_medium)
planetarium.photo.attach(io: planetarium_file, filename: "artwork-planetarium.webp", content_type: "image/webp")
planetarium.save!

moon = Project.new(category: "Artwork", title: "Planetarium", collab: music_video_artist.nickname, video_url: "", music_url: "", user_id: artwork_artist.id, description: lorem_ipsum_medium)
moon.photo.attach(io: moon_file, filename: "artwork-moon.webp", content_type: "image/webp")
moon.save!

troglodyte = Project.new(category: "Artwork", title: "Troglodyte", collab: "", video_url: "", music_url: "", user_id: artwork_artist.id, description: lorem_ipsum_medium)
troglodyte.photo.attach(io: troglodyte_file, filename: "artwork-troglodyte.webp", content_type: "image/webp")
troglodyte.save!

puts "Creating likes..."

Like.create!(user_id: 2, project_id: 1)
Like.create!(user_id: 3, project_id: 1)

Like.create!(user_id: 1, project_id: 2)
Like.create!(user_id: 3, project_id: 2)

Like.create!(user_id: 2, project_id: 3)

Like.create!(user_id: 2, project_id: 4)
Like.create!(user_id: 3, project_id: 4)

Like.create!(user_id: 1, project_id: 5)
Like.create!(user_id: 2, project_id: 5)
Like.create!(user_id: 3, project_id: 5)

Like.create!(user_id: 2, project_id: 6)
Like.create!(user_id: 3, project_id: 6)

Like.create!(user_id: 1, project_id: 7)

Like.create!(user_id: 2, project_id: 11)
Like.create!(user_id: 3, project_id: 11)

Like.create!(user_id: 2, project_id: 13)

Like.create!(user_id: 2, project_id: 14)
Like.create!(user_id: 3, project_id: 14)

Like.create!(user_id: 1, project_id: 15)
Like.create!(user_id: 2, project_id: 15)
Like.create!(user_id: 3, project_id: 15)

# Like.create!(user_id: 1, project_id: 17)

# Like.create!(user_id: 1, project_id: 18)
# Like.create!(user_id: 2, project_id: 18)
# Like.create!(user_id: 3, project_id: 18)

# Like.create!(user_id: 2, project_id: 21)
# Like.create!(user_id: 3, project_id: 21)
# Like.create!(user_id: 1, project_id: 22)
# Like.create!(user_id: 3, project_id: 22)
# Like.create!(user_id: 2, project_id: 23)

# Like.create!(user_id: 2, project_id: 24)
# Like.create!(user_id: 3, project_id: 24)

# Like.create!(user_id: 2, project_id: 25)

# Like.create!(user_id: 2, project_id: 26)
# Like.create!(user_id: 3, project_id: 26)

# Like.create!(user_id: 1, project_id: 27)
# Like.create!(user_id: 3, project_id: 27)
# Like.create!(user_id: 2, project_id: 27)

# Like.create!(user_id: 1, project_id: 30)
# Like.create!(user_id: 2, project_id: 30)
# Like.create!(user_id: 3, project_id: 30)

puts "Seed is done!"
