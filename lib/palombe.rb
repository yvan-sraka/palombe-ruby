require "mkfifo"

class Palombe
    def self.send name, value
        Dir.mkdir "/tmp/palombe/"
        path = "/tmp/palombe/#{name}"
        File.mkfifo(path)
        File.open(path, "w") do |f|
            f.puts value
        end
    end

    def self.receive name
        path = "/tmp/palombe/#{name}"
        value = ""
        File.open(path, "r") do |f|
            while line = f.gets
                value += line
            end
        end
        value
    end
end