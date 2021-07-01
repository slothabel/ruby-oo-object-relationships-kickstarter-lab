class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        found_backer = ProjectBacker.all.select{ |i| i.project == self }
        found_backer.map {|i| i.backer}
    end

end