require 'nokogiri'
require 'open-uri'


class Processor
    def initialize(url)
        @url = url
    end

    def doc
        @doc ||= Nokogiri::HTML(open(@url))
    end

    class << self
        attr_reader :name, :host
    end
end
