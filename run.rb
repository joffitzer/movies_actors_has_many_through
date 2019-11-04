require 'pry'

require_relative "lib/movie.rb"
require_relative "lib/role.rb"
require_relative "lib/actor.rb"

tom = Actor.new("Tom", "Cruise", 50)
will = Actor.new("Will", "Ferrell", 55)

mission_impossible = Movie.new("Mission Impossible", 2005)
elf = Movie.new("Elf", 2008)

buddy = Role.new(will, elf, "Buddy the Elf")
ethan = Role.new(tom, mission_impossible, "Ethan Hunt")
buddy_dad = Role.new(tom, elf, "Buddy's Dad in Elf")


binding.pry
