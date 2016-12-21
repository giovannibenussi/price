require 'nokogiri'
require 'open-uri'


class Processor
    def initialize(url)
        @url = url
    end

    def get
        @doc = Nokogiri::HTML(open(@url))
    end
end
