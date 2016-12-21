module PriceProcessors
    class Falabella < Processor
        @name = 'Falabella'

        def price
            get_numbers(doc.css('.precio1 .unitPriceD')[0].text).to_i
        end
    end
end
