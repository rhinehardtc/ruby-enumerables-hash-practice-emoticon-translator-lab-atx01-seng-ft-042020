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


def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  emoticon = library.keys.find do |key|
    library[key][:english] == emoticon
  end
  emoticon ? library[emoticon][:japanese] : "Sorry, that emoticon was not found"
end

def get_english_meaning(file_path, emoticon)
  library = load_library(file_path)
  emoticon = library.keys.find do |key|
    library[key][:japanese] == emoticon
  end
  emoticon ? emoticon : "Sorry, that emoticon was not found"
end