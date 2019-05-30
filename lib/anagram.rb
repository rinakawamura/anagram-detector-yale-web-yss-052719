class Anagram 
    attr_accessor :word
    def initialize(word)
        @word = word
    end

    def match(array)
        matches = []
        array.select do |anagram|
            add = true
            letters = @word.split("")
            for i in 0...anagram.length do
                if !letters.include?(anagram[i])
                    add = false
                else
                    letters.delete_at(letters.index(anagram[i]))
                end
            end
            if add 
                matches << anagram
            end
        end
        return matches
    end              
end