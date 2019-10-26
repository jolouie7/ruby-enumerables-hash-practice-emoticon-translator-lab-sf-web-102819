require "pry"
# require modules here
require "yaml"

def load_library(path)
  #INPUT: HoA (1hash w/ array as val)
  hash = {}
  emoticons = YAML.load_file(path)
  hash[:get_meaning] = {}
  hash[:get_emoticon] = {}
  
  emoticons.each do |meaning, arr|
    brind.pry
    hash[:get_meaning][meaning] = arr[1]
  end
  # hash[:get_meaning][emoticons.keys[0]] = emoticons.keys[0][1]
  hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end