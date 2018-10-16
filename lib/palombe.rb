require "mkfifo"

class Palombe
    PREFIX = "/tmp/palombe/"

    def self.send name, value
        Dir.mkdir PREFIX
        path = "#{PREFIX}#{name}"
        File.mkfifo(path)
        File.open(path, "w") do |f|
            f.puts value
        end
    end

    def self.receive name
        path = "#{PREFIX}#{name}"
        value = ""
        File.open(path, "r") do |f|
            while line = f.gets
                value += line
            end
        end
        value
    end
end