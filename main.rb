def bubble_sort(ar)
  i=0
  while i<(ar.length)
    j=1
    while j<(ar.length-i)
      if ar[j-1]>ar[j]
        temp=ar[j-1]
        ar[j-1]=ar[j]
        ar[j]=temp
      end
      j+=1
    end
    i+=1
  end
  return ar
end

puts bubble_sort([4,3,78,2,0,2])