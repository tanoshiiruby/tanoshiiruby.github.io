class OrderedHash
  def initialize()
    @keys = Array.new()
    @content = Hash.new()
  end

  def [](key)
    @content[key]
  end

  def []=(key, value)
    @content[key] = value
    if !@keys.include?(key)
      @keys << key
    end
  end

  def delete(key)
    @keys.delete(key)
    @content.delete(key)
  end

  def keys()
    @keys
  end

  def each()
    @keys.each{|key|
      yield(key, @content[key])
    }
  end

end

oh = OrderedHash.new()
oh["one"] = 1
oh["two"] = 2
oh["three"] = 3
oh["two"] = 4
p oh.keys()
oh.each{|key,value|
  p [key, value]
}
