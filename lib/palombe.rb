class Palombe
    private_class_method def self.mkfifo name
        prefix = "/tmp/palombe/"
        Dir.mkdir prefix if !Dir.exist? prefix
        path = "#{prefix}#{name}"
        File.mkfifo(path, 0o600) if !File.exist? path
        path
    end

    def self.send name, value
        File.open((mkfifo name), "w") do |f|
            f.puts value
        end
    end

    def self.receive name
        value = ""
        path = mkfifo name
        File.open(path, "r") do |f|
            while line = f.gets
                value += line
            end
        end
        File.delete path
        value.chomp
    end
end