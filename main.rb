def bubble_sort(arr)
  i = 0
  while i < arr.length
    j = 1
    while j < arr.length - i
      if arr[j - 1] > arr[j]
        temp = arr[j - 1]
        arr[j - 1] = arr[j]
        arr[j] = temp
      end
      j += 1
    end
    i += 1
  end
  puts '[' + arr.join(',') + ']'
end

def bubble_sort_by(arr)
  i = 0
  while i < arr.length
    j = 1
    while j < arr.length - i
      if (yield arr[j - 1], arr[j]).positive?
        temp = arr[j - 1]
        arr[j - 1] = arr[j]
        arr[j] = temp
      end
      j += 1
    end
    i += 1
  end
  puts '[' + '"' + arr.join('","') + '"' + ']'
end

bubble_sort([4, 3, 78, 2, 0, 2])
bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
