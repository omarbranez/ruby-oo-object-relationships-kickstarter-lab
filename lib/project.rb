class Project
    attr_reader :title
   

    def initialize(title)
        @title = title
    end
    
    # def self.all
    #     @@all
    # end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        new_project_backers = ProjectBacker.all.select {|projects| projects.project == self}
        new_project_backers.map {|npb| npb.backer}
    end

end