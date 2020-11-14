class Project
  @@all = []
  attr_accessor :title
  def initialize(title)
    self.title = title
    self.class.all.push(self)
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backers
    project_backers = ProjectBacker.all.select do |project_backer|
      project_backer.project == self
    end
    project_backers.collect do |project_backer|
      project_backer.backer
    end
  end

  def self.all
    @@all
  end
end
