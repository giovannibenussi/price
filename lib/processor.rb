require 'nokogiri'
require 'open-uri'


class Processor
    def initialize(url)
        @url = url
        @doc = Nokogiri::HTML(open(@url))
    end
end
