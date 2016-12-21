module PriceProcessors
    class PCFactory < Processor
        @name = 'PCFactory'
        @host = 'pcfactory'

        def price
            get_numbers(doc.css('.main_precio_efectivo')[0].text).to_i
        end

        def name
            doc.css('.main_titulo_ficha_bold')[0].text.delete("\t").delete("\n")
        end
    end
end
