require 'yaml'

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

def get_japanese_emoticon
  
end

def get_english_meaning
  # code goes here
end