class Project
    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers 
        project_backers = ProjectBacker.all.select do |project_backer|
            project_backer.project == self
        end
        project_backers.map do |project_backer|
            project_backer.backer
        end
    end

    
end