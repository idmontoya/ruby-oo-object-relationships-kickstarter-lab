class ProjectBacker
    @@all = []
    attr_reader :project, :backer

    def self.all
        @@all
    end

    def initialize(project, backer)
        @project = project 
        @backer = backer
        @@all << self
    end

end