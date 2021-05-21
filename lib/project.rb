class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end


    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        result = ProjectBacker.all.select do |prBacker|
              prBacker.project == self
          end
        
        result.map do |project|
            project.backer
        end
    
    end


end
