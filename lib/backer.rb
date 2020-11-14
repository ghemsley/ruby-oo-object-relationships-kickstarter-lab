class Backer
  @@all = []
  attr_accessor :name
  def initialize(name)
    self.name = name
    self.class.all.push(self)
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def backed_projects
    project_backers = ProjectBacker.all.select do |project_backer|
      project_backer.backer == self
    end
    project_backers.collect do |project_backer|
      project_backer.project
    end
  end

  def self.all
    @@all
  end
end
