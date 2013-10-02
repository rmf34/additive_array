require 'debugger'

module ArrayAdder

  # naive solution
  def nested_loop_attitive_find(arr, target)
    0.upto(arr.length - 1) do |outer|
      0.upto(arr.length - 1) do |inner|
        if outer + inner == target
          return true
        end
      end
    end
    return false
  end


  def slow_hash_additive_find(arr, target)
    lookup_table = Hash.new

    arr.each do |element|
      if lookup_table[element]
        lookup_table[element] += 1
      else
        lookup_table[element] = 1
      end
    end

    # whenever you have 2 iterators, this is a hint that you can remove one

    # check hash to see if there is a key
    # == target - element

    arr.each do |e|
      if lookup_table[target - e]
        return true
      end
    end
    return false
  end

  # hash implementation is 2n
  # nested loop is n^2



  def fast_hash_additive_find(arr, target)
    lookup_table = Hash.new

    arr.each do |element|
      return true if lookup_table[target - element]
      if lookup_table[element]
        lookup_table[element] += 1
      else
        lookup_table[element] = 1
      end
    end

    return false
  end
end