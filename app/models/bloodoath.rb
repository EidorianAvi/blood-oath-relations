class Bloodoath
    @@all = []

    attr_reader :cult, :follower, :initiation_date

    def initialize cult, follower
        @cult = cult
        @follower = follower

        @initiation_date = Time.now.strftime("%Y/%m/$d")
        
        @@all << self
    end

    def self.all
        @@all
    end

    
end