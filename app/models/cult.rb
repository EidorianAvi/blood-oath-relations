class Cult 
    attr_reader :name, :location, :founding_year, :slogan
    @@all = []

    def initialize name, location, founding_year, slogan
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan 

        @@all << self
    end
    
    def self.all
        @@all
    end

    def recruit_follower follower
        Bloodoath.new(self, follower)
    end

    def cult_population
        Bloodoath.all.count{|oath| oath.cult == self}
    end


    def self.find_by_name cult_name
        all.find {|cult| cult.name == cult_name}
    end

    def self.find_by_location cult_location
        all.select {|cult| cult.location == cult_location}
    end

    def self.find_by_founding_year year
        all.select {|cult| cult.founding_year == year}
    end

    def followers
        # Bloodoath.all.select do |oath|
        #     oath.cult == self
        # end.map do |bloodoath_instance|
        #     bloodoath_instance.follower
        # end

        Bloodoath.all.select{|oath| oath.cult == self}.map(&:follower)
    end

    def average_age
       followers.reduce(0){|sum, follower| sum + follower.age}/followers.count.to_f
    end

    def my_followers_mottos
        followers.map do |follower|
            p follower.life_motto
        end
    end


end