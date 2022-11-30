# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).

require 'open-uri'

lorem_ipsum_long = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis viverra nec metus sit amet iaculis. Ut at tincidunt orci, finibus posuere urna. Duis volutpat metus nec purus egestas aliquet. Duis sit amet magna at odio accumsan blandit. Morbi vel tellus at nunc mattis volutpat ac sed justo. Aenean gravida dapibus tellus, vel varius lectus lacinia id. Donec ac sagittis eros. Maecenas eu cursus tellus. Mauris magna risus, elementum sed odio sed, molestie suscipit dolor. Suspendisse gravida dolor metus, nec tempor lorem pulvinar ultrices."
lorem_ipsum_medium = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis viverra nec metus sit amet iaculis. Ut at tincidunt orci, finibus posuere urna. Duis volutpat metus nec purus egestas aliquet. Duis sit amet magna at odio accumsan blandit."
lorem_ipsum_short = "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit."

puts "Launching the seed"
puts "Destroying..."

Like.destroy_all
Project.destroy_all
User.destroy_all

puts "Creating users..."

musician = User.create!(nickname: "Chris Shards", first_name: "Chris", last_name: "Shards", email: "chris@gmail.com", password: "123456", description: lorem_ipsum_short)
video_artist = User.create!(nickname: "Howard Wimshurst", first_name: "Howard", last_name: "Wimshurst", email: "howard@gmail.com", password: "123456", description: "Award winning filmmaker and artist who specializes in hand-drawn animation. 2D animator obsessed with the way things move.")
artwork_artist = User.create!(nickname: "Novans Adikresna", first_name: "Novans", last_name: "Adikresna", email: "novans@gmail.com", password: "123456", description: "I made this work for a music album or cover art, with a modern concept and a touch of futuristic and sci-fi themes. I play with lines, colors and dimensions. Hope you like it, enjoy!")

puts "Creating projects..."

# 1. MUSIC
music_1 = Project.create!(category: Project::CATEGORIES[0], title: "Always With You", collab: "#{artwork_artist.nickname} and #{video_artist.nickname}", video_url: "", music_url: "https://open.spotify.com/embed/track/1JBqbYJKV57GBuSLl3j3TN?utm_source=generator&theme=0", user_id: musician.id, description: lorem_ipsum_medium)
music_2 = Project.create!(category: Project::CATEGORIES[0], title: "Salt Lake Seagull", collab: "#{artwork_artist.nickname} and #{video_artist.nickname}", video_url: "", music_url: "https://open.spotify.com/embed/track/4WvAR6CHlqVjbUupNjkmcb?utm_source=generator&theme=0", user_id: musician.id, description: lorem_ipsum_medium)
music_3 = Project.create!(category: Project::CATEGORIES[0], title: "Heavy Heart", collab: "#{artwork_artist.nickname} and #{video_artist.nickname}", video_url: "", music_url: "https://open.spotify.com/embed/track/2iqXKIikPBMKMrIISWVEEE?utm_source=generator&theme=0", user_id: musician.id, description: lorem_ipsum_medium)
music_4 = Project.create!(category: Project::CATEGORIES[0], title: "Ghetto Dreamin'", collab: artwork_artist.nickname, video_url: "", music_url: "https://open.spotify.com/embed/track/2ETiOcuJDgUwaXLNZKnZrM?utm_source=generator&theme=0", user_id: musician.id, description: lorem_ipsum_medium)
music_5 = Project.create!(category: Project::CATEGORIES[0], title: "Between The Waves", collab: "", video_url: "", music_url: "https://open.spotify.com/embed/track/5lz7FCk3apkROsI6hctQLU?utm_source=generator&theme=0", user_id: musician.id, description: lorem_ipsum_medium)

# 2. VIDEO ART
video_1 = Project.create!(category: Project::CATEGORIES[1], title: "Flying in the Sky", collab: musician.nickname, video_url: "https://www.youtube.com/embed/9Z4TiA5JH_0", music_url: "", user_id: video_artist.id, description: lorem_ipsum_medium)
video_2 = Project.create!(category: Project::CATEGORIES[1], title: "Dance of the Yōkai", collab: musician.nickname, video_url: "https://www.youtube.com/embed/piQpugWN2Xw", music_url: "", user_id: video_artist.id, description: lorem_ipsum_medium)
video_3 = Project.create!(category: Project::CATEGORIES[1], title: "Winter Hunting", collab: musician.nickname, video_url: "https://www.youtube.com/embed/RDfu4iEeyro", music_url: "", user_id: video_artist.id, description: lorem_ipsum_medium)
video_4 = Project.create!(category: Project::CATEGORIES[1], title: "Lines Animation", collab: musician.nickname, video_url: "https://www.youtube.com/embed/qMtsaIiwiaA", music_url: "", user_id: video_artist.id, description: lorem_ipsum_medium)
video_5 = Project.create!(category: Project::CATEGORIES[1], title: "Rough Animation", collab: "", video_url: "https://www.youtube.com/embed/upzThAC2A_s", music_url: "", user_id: video_artist.id, description: lorem_ipsum_medium)

# 3. ARTWORK
puts "Downloading Cloudinary images..."
tesseract_file = URI.open("https://res.cloudinary.com/ducykclj8/image/upload/v1669753289/l-accroche/artwork-tesseract_twl56v.webp")
hyperspace_file = URI.open("https://res.cloudinary.com/ducykclj8/image/upload/v1669753289/l-accroche/artwork-hyperspace_lboe8r.webp")
planetarium_file = URI.open("https://res.cloudinary.com/ducykclj8/image/upload/v1669753289/l-accroche/artwork-planetariumwebp_jrjfqd.webp")
moon_file = URI.open("https://res.cloudinary.com/ducykclj8/image/upload/v1669753289/l-accroche/artwork-moon_r1j4tj.webp")
troglodyte_file = URI.open("https://res.cloudinary.com/ducykclj8/image/upload/v1669753289/l-accroche/artwork-troglodyte_tpqcdo.webp")

tesseract = Project.new(category: Project::CATEGORIES[2], title: "Tesseract", collab: musician.nickname, video_url: "", music_url: "", user_id: artwork_artist.id, description: lorem_ipsum_medium)
tesseract.photo.attach(io: tesseract_file, filename: "artwork-tesseract.webp", content_type: "image/webp")
tesseract.save!

hyperspace = Project.new(category: Project::CATEGORIES[2], title: "Hyperspace", collab: musician.nickname, video_url: "", music_url: "", user_id: artwork_artist.id, description: lorem_ipsum_medium)
hyperspace.photo.attach(io: hyperspace_file, filename: "artwork-hyperspace.webp", content_type: "image/webp")
hyperspace.save!

planetarium = Project.new(category: Project::CATEGORIES[2], title: "Planetarium", collab: musician.nickname, video_url: "", music_url: "", user_id: artwork_artist.id, description: lorem_ipsum_medium)
planetarium.photo.attach(io: planetarium_file, filename: "artwork-planetarium.webp", content_type: "image/webp")
planetarium.save!

moon = Project.new(category: Project::CATEGORIES[2], title: "Planetarium", collab: musician.nickname, video_url: "", music_url: "", user_id: artwork_artist.id, description: lorem_ipsum_medium)
moon.photo.attach(io: moon_file, filename: "artwork-moon.webp", content_type: "image/webp")
moon.save!

troglodyte = Project.new(category: Project::CATEGORIES[2], title: "Troglodyte", collab: "", video_url: "", music_url: "", user_id: artwork_artist.id, description: lorem_ipsum_medium)
troglodyte.photo.attach(io: troglodyte_file, filename: "artwork-troglodyte.webp", content_type: "image/webp")
troglodyte.save!

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

# Like.create!(user_id: musician.id, project_id: 17)

# Like.create!(user_id: musician.id, project_id: 18)
# Like.create!(user_id: video_artist.id, project_id: 18)
# Like.create!(user_id: artwork_artist.id, project_id: 18)

# Like.create!(user_id: video_artist.id, project_id: 21)
# Like.create!(user_id: artwork_artist.id, project_id: 21)
# Like.create!(user_id: musician.id, project_id: 22)
# Like.create!(user_id: artwork_artist.id, project_id: 22)
# Like.create!(user_id: video_artist.id, project_id: 23)

# Like.create!(user_id: video_artist.id, project_id: 24)
# Like.create!(user_id: artwork_artist.id, project_id: 24)

# Like.create!(user_id: video_artist.id, project_id: 25)

# Like.create!(user_id: video_artist.id, project_id: 26)
# Like.create!(user_id: artwork_artist.id, project_id: 26)

# Like.create!(user_id: musician.id, project_id: 27)
# Like.create!(user_id: artwork_artist.id, project_id: 27)
# Like.create!(user_id: video_artist.id, project_id: 27)

# Like.create!(user_id: musician.id, project_id: 30)
# Like.create!(user_id: video_artist.id, project_id: 30)
# Like.create!(user_id: artwork_artist.id, project_id: 30)

puts "Seed is done!"
