require_relative 'lib/price.rb'

urls = ["http://www.falabella.com/falabella-cl/product/5358900/Smartphone-Galaxy-J7-Prime-Negro-Dual-Sim-Entel"]

# amazon = Price::Falabella.new("http://www.falabella.com/falabella-cl/product/5358900/Smartphone-Galaxy-J7-Prime-Negro-Dual-Sim-Entel")
# puts Price::Falabella.name
# puts amazon.price
# puts amazon.price

urls.each do | url |
    product = Price.from_url(url)
    puts product.name
end
