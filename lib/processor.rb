require 'nokogiri'
require 'net/http'

class Processor
    def initialize(url)
        @url = url
    end

    def doc
        response = Net::HTTP.get_response(URI.parse(@url))
        @doc ||= Nokogiri::HTML(response.body)
    end

    class << self
        def pretty_setter(*attrs)
            [*attrs].each do | attr |
                attr = attr.to_s
                define_singleton_method(attr) do | value = nil |
                    return instance_variable_get("@#{attr}") if value.nil?
                    instance_variable_set("@#{attr}", value)
                end
            end
        end
    end

    attr_writer :name, :host
    pretty_setter :name, :host
end
