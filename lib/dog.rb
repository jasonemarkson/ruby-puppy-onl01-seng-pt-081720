# Add your code here
require 'pry'

class Dog 
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def self.clear_all
    @@all.clear 
  end
  
  binding.pry
  
  def self.print_all
    @@all.each do |dog|
      puts dog.split("@name")
    end
  end
end