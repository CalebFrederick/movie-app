require "http"

system "clear"

while true
  puts "Welcome to Movies and Actors Database. Enter a number to see info about a movie. Choose 0 for all movies. Quit application with 'exit'."
  choice = gets.chomp
  puts "" 
  if choice == "0"
    response = HTTP.get("http://localhost:3000/movies")
    index = 0
    while index < response.parse(:json).length
      puts "id: #{response.parse(:json)[index]["id"]}"
      puts "title: #{response.parse(:json)[index]["title"]}"
      puts ""
      index += 1
    end
  elsif choice.downcase == "exit"
    break
  else
    response = HTTP.get("http://localhost:3000/movies/#{choice}")
    if response.parse(:json) == nil
      puts "No entry found."
      puts ""
    else
      puts "title: #{response.parse(:json)["title"]}"
      puts "year: #{response.parse(:json)["year"].to_s}"
      puts "plot: #{response.parse(:json)["plot"]}"
      puts ""
    end
  end