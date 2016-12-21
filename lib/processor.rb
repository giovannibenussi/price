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
