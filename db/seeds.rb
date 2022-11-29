# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create!(name: "Luke", movie: movies.first)

#// ///////// user X2 /////////
#// trame  User.new (name:"", nickname:"", first_name:"", last_name:"", description:"", email:"", password:"")
Project.destroy_all
User.destroy_all
puts "Destroying..."

dimitry = User.create!(nickname:"The Great Cello King", first_name:"Dimitry", last_name:"D", description:"Je suis un zicos , prêt à enflammer les stades", email:"dimitry@gmail.com", password:"accroche")
matthieu = User.create!(nickname:"Front Guru", first_name:"Mathieu", last_name:"W", description:"xxxx", email:"matthieu@gmail.com", password:"accroche")
arnaud = User.create!(nickname:"Video Master", first_name:"Arnaud", last_name:"R", description:"Je cherche à lancer ma prod et recherche des collaborateurs", email:"arnaud@gmail.com", password:"accroche")

puts "Users created"
##### x 10 minimum projets vidéo // /////////
### Project.create!(title:"", description:"", category:"", collab:"", video_url:"", music_url:"", user_id: user.id)

# video
Project.create!(title:"Batman", description:"action movie", category:"Artistic Video", collab:"dimitry", video_url:"https://www.youtube.com/watch?v=hGQo1axtj60", music_url:"", user_id: matthieu.id)
Project.create!(title:"Blade Runner", description:"action movie", category:"Artistic Video", collab:"mathieu", video_url:"https://www.youtube.com/watch?v=eogpIG53Cis", music_url:"", user_id: arnaud.id)
Project.create!(title:"The Witchher", description:"video with mights, magic and monsters", category:"Artistic Video", collab:"", video_url:"https://www.youtube.com/watch?v=ymYBUDq6wnI", music_url:"", user_id: arnaud.id)
Project.create!(title:"Akira", description:"Big trouble in neo tokyo", category:"Artistic Video", collab:"mathieu", video_url:"https://www.youtube.com/watch?v=_aIJOdIWFd0", music_url:"", user_id: dimitry.id)
Project.create!(title:"Gundam", description:"xxxxx", category:"Artistic Video", collab:"dimitry", video_url:"https://www.youtube.com/watch?v=vNpJfkIdaqE", music_url:"", user_id: arnaud.id)
Project.create!(title:"Neon Genesis evangelion", description:"anime", category:"Artistic Video", collab:"dimitry", video_url:"https://www.youtube.com/watch?v=13nSISwxrY4", music_url:"", user_id: matthieu.id)
Project.create!(title:"inception", description:"xxxx", category:"Artistic Video", collab:"", video_url:"https://www.youtube.com/watch?v=CPTIgILtna8", music_url:"", user_id: matthieu.id)
Project.create!(title:"black panther", description:"xxx", category:"Artistic Video", collab:"dimitry", video_url:"https://www.youtube.com/watch?v=DlGIWM_e9vg", music_url:"", user_id: arnaud.id)
Project.create!(title:"Battle Angel alita", description:"plein de castagne et de cyborgs", category:"Artistic Video", collab:"", video_url:"https://www.youtube.com/watch?v=YB5mOPWgAns", music_url:"", user_id: dimitry.id)
Project.create!(title:"Scream", description:"un slash movie", category:"Artistic Video", collab:"", video_url:"https://www.youtube.com/watch?v=1QvVPKp3N00", music_url:"", user_id: dimitry.id)

# music
Project.create!(title:"Concerto en ut mineur", description:"classical tune", category:"Music Video", collab:"", video_url:"", music_url:"", user_id: arnaud.id)
Project.create!(title:"symphony n°9 of the new world", description:"classical", category:"Music Video", collab:"arnaud", video_url:"", music_url:"", user_id: dimitry.id)
Project.create!(title:"enter sadman", description:"and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged", category:"Music Video", collab:"", video_url:"", music_url:"", user_id: arnaud.id)
Project.create!(title:"symphony of the new world", description:"classical tune", category:"Music Video", collab:"arnaud", video_url:"", music_url:"", user_id: matthieu.id)
Project.create!(title:"Rhapsody in blue", description:"and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged", category:"Music Video", collab:"dimitry", video_url:"", music_url:"", user_id: arnaud.id)
Project.create!(title:"harmony corruption", description:"and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged", category:"Music Video", collab:"dimitry", video_url:"", music_url:"", user_id: matthieu.id)
Project.create!(title:"south of heaven", description:"and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged", category:"Music Video", collab:"dimitry", video_url:"", music_url:"", user_id: matthieu.id)
Project.create!(title:"shake it off", description:"and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged", category:"Music Video", collab:"matthieu", video_url:"", music_url:"", user_id: dimitry.id)
Project.create!(title:"thriller", description:"and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged", category:"Music Video", collab:"dimitry", video_url:"", music_url:"", user_id: arnaud.id)
Project.create!(title:"celebration", description:"and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged", category:"Music Video", collab:"", video_url:"", music_url:"", user_id: arnaud.id)

# Artwork
Project.create!(title:"guernica", description:"industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing", category:"Artwork", collab:"pablo picasso", video_url:"https://www.behance.net/for_you/onboarding?sdid=3SH1B2HQ&mv=search", music_url:"", user_id: arnaud.id)
Project.create!(title:"l'angelus", description:"industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing", category:"Artwork", collab:"salvador dali", video_url:"https://www.behance.net/for_you/onboarding?sdid=3SH1B2HQ&mv=search", music_url:"", user_id: dimitry.id)
Project.create!(title:"krieg", description:"industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing", category:"Artwork", collab:"max ernst", video_url:"https://www.behance.net/for_you/onboarding?sdid=3SH1B2HQ&mv=search", music_url:"", user_id: matthieu.id)
Project.create!(title:"colors", description:"industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing", category:"Artwork", collab:"vassili kandisnky", video_url:"https://www.behance.net/for_you/onboarding?sdid=3SH1B2HQ&mv=search", music_url:"", user_id: arnaud.id)
Project.create!(title:"l'église d'auvers sur oise", description:"industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing", category:"Artwork", collab:"van gogh", video_url:"https://www.behance.net/for_you/onboarding?sdid=3SH1B2HQ&mv=search", music_url:"", user_id: dimitry.id)

# Motion Design
Project.create!(title:"One Punch Man", description:"Motion Design", category:"Motion Design", collab:"", video_url:"https://www.youtube.com/watch?v=7PpacbTvUtI", music_url:"", user_id: matthieu.id)
Project.create!(title:"les bronzés", description:"and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged", category:"Motion Design", collab:"", video_url:"https://www.youtube.com/watch?v=nYBnovOWXZE", music_url:"", user_id: arnaud.id)
Project.create!(title:"hanibal", description:"and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged", category:"Motion Design", collab:"", video_url:"https://youtu.be/lOIZmoOhJik", music_url:"", user_id: dimitry.id)
Project.create!(title:"when all is said", description:"and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged", category:"Motion Design", collab:"napalm death", video_url:"https://www.youtube.com/watch?v=SIRUzqHTNh8", music_url:"", user_id: dimitry.id)
Project.create!(title:"greed killing", description:"and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged", category:"Motion Design", collab:"", video_url:"https://www.youtube.com/watch?v=rLQvYoeqhfo", music_url:"", user_id: arnaud.id)

puts"Projects Created"

#m = Project.create!(title:"Batman", description:"action movie", category:"video", collab:"", video_url:"https://www.youtube.com/watch?v=hGQo1axtj60", music_url:"")
#m.user = matthieu
#m.save
#// ///////// 10 projets graphiques // /////////

#// ///////// 10 category graphique/artwork // /////////

puts "seed is done"

#
