require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative './fancy_dance.rb'

# Describes an Dancer
class Dancer
  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods
  ### CLASS DEFINITIONS ###


  # Class variables
  @@all = [] # list of all Dancers

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

  # saves Dancer instance to all class variable
  def save
    self.class.all << self
  end


end