require_relative 'lib/price.rb'

urls = [
    "https://www.pcfactory.cl/producto/23898-Smartphone.Galaxy.J7.Prime.Octa.Core.16GB.55.FHD.4G.Android.6.0.Negro.Liberado",
    # "http://www.falabella.com/falabella-cl/product/5358900/Smartphone-Galaxy-J7-Prime-Negro-Dual-Sim-Entel"
]

# amazon = Price::Falabella.new("http://www.falabella.com/falabella-cl/product/5358900/Smartphone-Galaxy-J7-Prime-Negro-Dual-Sim-Entel")
# puts Price::Falabella.name
# puts amazon.price
# puts amazon.price

urls.each do | url |
    product = Price.from_url(url)
    unless product.nil?
        puts product.name
    end
end
