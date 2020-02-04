class Backer
    @@all = []

    attr_accessor :name
    def initialize (name)
        @name = name
        
        @@all << self
    end

    def back_project (project)
        ProjectBacker.new(project, self)
    end
    
    def backed_projects
        ProjectBacker.all.select{|pb|pb.backer == self}.map{|bp| bp.project}
    end
end