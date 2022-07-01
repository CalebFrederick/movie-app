require 'ffaker'

# actor = Actor.create({first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock"})


10.times do
    actor = Actor.create({first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, known_for: FFaker::Movie.title})
end
