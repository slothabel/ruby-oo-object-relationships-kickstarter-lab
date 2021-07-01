require 'pry'
class Backer
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
       found_project = ProjectBacker.all.select{ |i| i.backer == self }
       found_project.map {|i| i.project}
      end
    



end