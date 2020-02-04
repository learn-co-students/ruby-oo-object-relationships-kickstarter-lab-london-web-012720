class Project
    @@all = []

    attr_reader :title
    def initialize (title)
        @title = title
        
        @@all << self
    end

    def add_backer (backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.select{|pb|pb.project == self}.map{|bp| bp.backer}
    end
end