class ProjectBacker
  @@all = []
  attr_accessor :project, :backer
  def initialize(project, backer)
    self.project = project
    self.backer = backer
    self.class.all.push(self)
  end

  def self.all
    @@all
  end
end
