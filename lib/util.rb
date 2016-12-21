module Util
    def self.remove_last_slash(string)
        string = string[0...-1] if string[-1] == '/'
        string
    end
end

class File
    def self.ruby_files_in_dir(dir, extension = '*')
        files = []
        dir = Util.remove_last_slash(dir)
        Dir[File.join("#{dir}/**/*.#{extension}")].each do |f|
         files.push(f)
        end
        files
    end

end

def get_numbers(string)
    string.delete("^0-9")
end

def get_host_from_url(url)
  url = "http://#{url}" if URI.parse(url).scheme.nil?
  host = URI.parse(url).host.downcase
  host = host.start_with?('www.') ? host[4..-1] : host
  host.split('.')[0]
end
