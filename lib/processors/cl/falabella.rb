module PriceProcessors
    class Falabella < Processor
        name 'Falabella'
        host 'falabella'

        def price
            get_numbers(doc.css('.precio1 .unitPriceD')[0].text).to_i
        end

        def name
            doc.css('#productDecription')[0].text
        end

        def brand
            doc.css('#productBrand')[0].text
        end
    end
end
