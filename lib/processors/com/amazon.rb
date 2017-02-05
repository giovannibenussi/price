module PriceProcessors
    class Amazon < Processor
        name 'Amazon'
        host 'amazon'

        def price
            doc.css('.priceblock_dealprice')[0].to_i
        end

        def name
            puts doc
            puts doc.css('.priceblock_dealprice').to_s
        end
    end
end
