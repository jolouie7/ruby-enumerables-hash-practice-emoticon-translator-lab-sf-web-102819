require "pry"
# require modules here
require "yaml"

def load_library(path)
  #INPUT: HoA (1hash w/ array as val)
  hash = {}
  emoticons = YAML.load_file(path)
  hash["get_meaning"] = {}
  hash["get_emoticon"] = {}
  
  emoticons.each do |jp_meaning, arr|
    # binding.pry
    hash["get_meaning"][arr[1]] = jp_meaning
  end
  emoticons.each do |eng_meaning, arr|
    hash["get_emoticon"][arr[0]] = eng_meaning
    hash["get_meaning"][hash["get_emoticon"][arr[0]]]
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