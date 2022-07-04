require 'ffaker'

# actor = Actor.create({first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock"})


10.times do
    actor = Actor.create({first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, known_for: FFaker::Movie.title})
end

movie = Movie.create({title: "Chronicle", year: 2012, plot: "Andrew (Dane DeHaan) is a socially awkward, introverted teen whose main form of escape and expression is a video camera. But things begin to change when Andrew, his cousin Matt (Alex Russell) and popular classmate Steve (Michael B. Jordan) discover a mysterious substance that leaves them with incredible powers. As their abilities become more powerful, the teens' lives spin out of control when their darker sides begin to emerge. Andrew's camera captures the unfolding events."})