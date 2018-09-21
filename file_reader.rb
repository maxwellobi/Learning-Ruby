class FileReader

    def initialize(file_name)
        @file_name = file_name
    end

    def count_word_frequency
        content = self.get_file_contents
        
        temp_content = content.split("\s")
        puts temp_content.group_by { |s| s }.select { |_,v| v.count > 1}.count
    end

    def get_file_contents
        
        f = open @file_name
        contents = f.read
    end
end

FileReader.new("permutation.rb").count_word_frequency