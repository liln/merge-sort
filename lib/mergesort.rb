class MergeSort
  def initialize
  end

  def sort(a)
    if a.length <= 1
      return a
    end

    middle = a.length / 2
    left = a[0 .. middle-1]
    right = a[middle .. a.length]

    left = sort(left)
    right = sort(right)
    merge(left, right)
  end

  def merge(left,right)
    sorted = Array.new
    while !left.empty? || !right.empty?
      if !left.empty? && !right.empty?
        if left.first < right.first
          sorted << left.first
          left = left.drop(1)
        else
          sorted << right.first
          right = right.drop(1)
        end
      elsif left.empty?
        sorted << right
        right = []
      else
        sorted << left
        left = []
      end
    end
    sorted.flatten
  end
end
