class Palombe
    def self.send name, value
        system('start /wait excel "my/path/to/the/sheet"')
    end

    def self.receive name
        value = ""
        path = __mkfifo name
        File.open(path, "r") do |f|
            while line = f.gets
                value += line
            end
        end
        File.delete path
        value.chomp
    end
end