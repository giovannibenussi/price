require 'yaml'
require_relative 'lib/price.rb'

urls = YAML.load_file('urls.yml')
puts urls.to_s

urls.each do | url |
    product = Price.from_url(url)
    unless product.nil?
        puts product.price
        puts product.name
        puts
    end
end
