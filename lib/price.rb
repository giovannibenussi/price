require_relative 'processor.rb'
require_relative 'util.rb'

module Price
    def self.load_processors(path, extension)
        files_in_dir = File.ruby_files_in_dir(path, extension)
        # processors = files_in_dir.map { |e| e.split('/')[-1] }.to_s
        files_in_dir.each do | file |
            require_relative "../#{file}"
        end
    end

    load_processors 'lib/processors', 'rb'

    def self.from_url(url)
        host = get_host_from_url(url)
    end

    def self.const_missing(name)
        processor = PriceProcessors.constants.find { | e | not e.nil? }
        PriceProcessors.const_get(processor)
    end
end
