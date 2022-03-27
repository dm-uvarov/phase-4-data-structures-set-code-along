# your code here
class MySet
    def initialize(enumerable = [])
        @hash = {}
        enumerable.each { |v| add(v)  }
    end


    def include?(v)
        @hash.has_key?(v)
    end

    def add(v)
        @hash[v] = true
        self
    end

    def delete(v)
        @hash.delete(v)
        self
    end

    def size
        @hash.size
    end
    
    def clear
        @hash.clear
        self
    end

    def each(&b)
        self.hash.keys.each(&b)
        self

    end
end

set = MySet.new([1,2,3,4,5,8,7,6])
p set.inspect
p "7? #{set.include?(7)}"
p "1? #{set.include?(1)}"
p "6? #{set.include?(6)}"
p set.delete(6)
p "6? #{set.include?(6)}"
p set.size
# p r = MySet[1,2,3,4,5]
# p r.inspect