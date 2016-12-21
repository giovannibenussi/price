require 'nokogiri'
require 'open-uri'
require_relative 'util.rb'

files_in_dir = File.ruby_files_in_dir('lib/processors')
puts files_in_dir.map { |e| e.split('/')[-1] }.to_s

class Processor
    def initialize(url)
        @url = url
    end

    def get
        @doc = Nokogiri::HTML(open(@url))
    end
end
