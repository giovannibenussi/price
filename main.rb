require_relative 'lib/price.rb'

amazon = Price::Falabella.new("http://www.falabella.com/falabella-cl/product/5358900/Smartphone-Galaxy-J7-Prime-Negro-Dual-Sim-Entel")
puts get_host_from_url("http://www.falabella.com/falabella-cl/product/5358900/Smartphone-Galaxy-J7-Prime-Negro-Dual-Sim-Entel")
puts amazon.price
