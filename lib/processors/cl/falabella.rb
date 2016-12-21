module Price
    class Falabella < Processor
        def price
            get_numbers(@doc.css('.precio1 .unitPriceD')[0].text).to_i
        end
    end
end
