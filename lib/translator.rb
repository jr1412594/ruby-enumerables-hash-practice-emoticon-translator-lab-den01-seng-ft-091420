# require modules here
require "yaml"
require 'pry'

def load_library(file)
  result = Hash.new
  emoticons = YAML.load_file(file)
  emoticons.each do |name, emoj|
   # binding.pry
    result[name] = {}
    result[name][:english] = emoj.first
    result[name][:japanese] = emoj.last
   # binding.pry
  end
  result
end

def get_english_meaning(file, emoticon)
  # code goes here
  final_result = nil
  result = Hash.new
 emoticons = load_library(file)
 emoticons.each do |key, value|
   result[value[:japanese]]= key
   final_result = result[emoticon]
   if final_result == nil
     final_result = "Sorry, that emoticon was not found"
   end
   #binding.pry
  end
final_result
#binding.pry
end

def get_japanese_emoticon(file, emoticon)
    #code goes here
    final_result = nil
    result = Hash.new
    emoticons = load_library(file)
    emoticons.each do |key, value|
      result[value[:english]] = value[:japanese]
      final_result = result[emoticon]
      if final_result == nil
        final_result = "Sorry, that emoticon was not found"
     #binding.pry
    end
    final_result
    binding.pry
 end

