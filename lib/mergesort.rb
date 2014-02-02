class MergeSort
  def initialize
  end

  def sort(a)
    return a if a.length <= 1

    middle = a.length / 2
    left = a[0 .. middle-1]
    right = a[middle .. a.length]

    left = sort(left)
    right = sort(right)
    merge(left, right)
  end

  private
    def merge(left,right)
      sorted = Array.new
      while !left.empty? || !right.empty?
        if !left.empty? && !right.empty?
          if left.first < right.first
            sorted << left.shift
          else
            sorted << right.shift
          end
        elsif left.empty?
          sorted.concat(right.pop(right.length))
        else
          sorted.concat(left.pop(left.length))
        end
      end
      sorted
    end
end
