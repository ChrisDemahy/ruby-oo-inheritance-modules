require_relative './dance_module.rb'
require_relative './class_methods_module.rb'
require_relative './fancy_dance.rb'

# Describes an Kid
class Kid
  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods
  ### CLASS DEFINITIONS ###


  # Class variables
  @@all = [] # list of all Kids

  # Reader for all class variable
  def self.all
    @@all
  end  


  ### INSTANCE DEFINITIONS ###

  # instance readers and writers
  attr_accessor :name

  # default constructor
  def initialize(name=nil)
    self.name = name
    self.save
  end

  # saves Kid instance to all class variable
  def save
    self.class.all << self
  end
end