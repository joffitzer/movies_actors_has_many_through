class Actor

    attr_accessor :age
    attr_reader :first_name, :last_name

    @@all = []

    def initialize(first_name, last_name, age)
        @first_name = first_name
        @last_name = last_name
        @age = age

        @@all << self
    end 

    def full_name
        @first_name + " " + @last_name
    end 

    def roles
        Role.all.select { |role| role.actor == self }
    end 

    def movies
        roles.map { |role| role.movie }
    end 

    def credits
        actor_credits = {}
        roles.each { |role| actor_credits[role.movie.title] = role.character_name}
        return actor_credits
    end 

    def self.all
        @@all 
    end 

    def self.find_by_full_name(full_name)
        self.all.select { |actor| actor.full_name == full_name }
    end 

    def self.no_younger_than(age)
        self.all.select { |actor| actor.age >= age }
    end 
  
end
