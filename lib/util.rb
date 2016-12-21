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
