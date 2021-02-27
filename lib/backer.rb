class Backer
    attr_reader :name

    
    def initialize(name)
        @name = name
       # @@all << self
    end

    # def self.all
    #     @@all
    # end

    def back_project(title)
        ProjectBacker.new(title, self)
    end

    def backed_projects
        new_backed_projects = ProjectBacker.all.select {|projects| projects.backer == self}
        new_backed_projects.map {|nbp| nbp.project}
    end
    

end