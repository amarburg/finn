
module Finn

  def self.project( name, &block )
    add_project ProjectLoader.new( name, &block )
  end

  def self.add_project( project )
    @@projects ||= []
    @@projects << project
  end

  def self.projects
    @@projects
  end

  class ProjectLoader

    attr_reader :name

    def initialize( name, &block )
      @name = name
      block.call( self )
    end

  end
end
