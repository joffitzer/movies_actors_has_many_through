class Movie

    attr_accessor :title, :year 

    @@all = []

    def initialize(title, year)
        @title = title
        @year = year
        
        @@all << self
    end 

    def pretty_print
        self.title + ": " + self.year.to_s
    end 

    def roles_in_movie
        Role.all.select { |role| role.movie == self }
    end 

    def cast
        roles_in_movie.map { |role| role.actor }
    end 

    def credits
        movie_credits = {}
        roles_in_movie.each { |role| movie_credits[role.character_name] = role.actor.full_name }
        return movie_credits
    end 

    def self.all
        @@all
    end 

    def self.by_year(year)
        self.all.select { |movie| movie.year == year }
    end 

end
