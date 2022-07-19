require 'ffaker'

# actor = Actor.create({first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock", gender: "M", age: 45, movie_id: 1})

# actor = Actor.create({first_name: "Larry", last_name: "David", known_for: "Curb Your Enthusiasm", gender: "M", age: 75, movie_id: 2})

# actor = Actor.create({first_name: "Catherine", last_name: "Tate", known_for: "Doctor Who", gender: "F", age: 54, movie_id: 3})

#  10.times do
#     actor = Actor.create({first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, known_for: FFaker::Movie.title})
# end

# movie = Movie.create({title: "Chronicle", year: 2012, plot: "Andrew (Dane DeHaan) is a socially awkward, introverted teen whose main form of escape and expression is a video camera. But things begin to change when Andrew, his cousin Matt (Alex Russell) and popular classmate Steve (Michael B. Jordan) discover a mysterious substance that leaves them with incredible powers. As their abilities become more powerful, the teens' lives spin out of control when their darker sides begin to emerge. Andrew's camera captures the unfolding events.", director: "Josh Trank", english: true})

# movie = Movie.create({title: "Hugo", year: 2011, plot: "Orphaned and alone except for an uncle, Hugo Cabret (Asa Butterfield) lives in the walls of a train station in 1930s Paris. Hugo's job is to oil and maintain the station's clocks, but to him, his more important task is to protect a broken automaton and notebook left to him by his late father (Jude Law). Accompanied by the goddaughter (Chloë Grace Moretz) of an embittered toy merchant (Ben Kingsley), Hugo embarks on a quest to solve the mystery of the automaton and find a place he can call home.", director: "Martin Scorsese", english: true})

# movie = Movie.create({title: "The School of Rock", year: 2003, plot: "Overly enthusiastic guitarist Dewey Finn (Jack Black) gets thrown out of his bar band and finds himself in desperate need of work. Posing as a substitute music teacher at an elite private elementary school, he exposes his students to the hard rock gods he idolizes and emulates -- much to the consternation of the uptight principal (Joan Cusack). As he gets his privileged and precocious charges in touch with their inner rock 'n' roll animals, he imagines redemption at a local Battle of the Bands.", director: "Richard Linklater", english: true})

# genre = Genre.create({name: "Action"})

# genre = Genre.create({name: "Adventure"})

# genre = Genre.create({name: "Comedy"})

movie_genre = MovieGenre.create({genre_id: 1, movie_id: 1})

movie_genre = MovieGenre.create({genre_id: 2, movie_id: 2})

movie_genre = MovieGenre.create({genre_id: 3, movie_id: 3})