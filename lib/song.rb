require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/paramable'
require_relative '../lib/concerns/findable'


class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods
  extend Findable

  include Memorable::InstanceMethods
  include Paramable

  @@songs = []

  def initialize
    self.class.all << self
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end


end
