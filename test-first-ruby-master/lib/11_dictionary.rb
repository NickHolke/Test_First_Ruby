class Dictionary
  attr_accessor :keywords, :entries

  def initialize 
    @entries = {}
  end

  def add(entry)
    if entry.is_a? String 
      @entries[entry] = nil
    else
      entry.each do |word, definition|
      @entries[word] = definition
      end
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(key)
    self.keywords.include?(key)
  end

  def find(key)
    @entries.select {|word, definition| word.scan(key).join == key}
  end

  def printable
    string = ""
    @entries.sort.each do |word, definition|
      string = string + %Q{[#{word}] "#{definition}"\n}
    end

    return string.chomp
  end
end



