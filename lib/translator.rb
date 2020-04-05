require 'yaml'
require 'pry'

def load_library(file_path)
  emojis = YAML.load_file(file_path)
  container = {}
  
  emojis.each do |name, face|
    container[name] = {}
    container[name][:english] = face[0]
    container[name][:japanese] = face[1]
  end
  container
end

def get_japanese_emoticon(file_path, english_emoji)
  library = load_library(file_path)
  library.key.find do |key|
    japan_emoji = 
  
end

def get_english_meaning(file_path, japan_emoji)
  library = load_library(file_path)
end