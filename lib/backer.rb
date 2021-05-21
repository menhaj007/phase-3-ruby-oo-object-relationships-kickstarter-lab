require "pry"
class Backer
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
      result = ProjectBacker.all.select do |prBacker|
            prBacker.backer == self
        end
        result.map do |t|
            t.project
        end

    # binding.pry
    end

    

end

# ProjectBacker.all.select do |p|
#     puts p.project.title
# end  