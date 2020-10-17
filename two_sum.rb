# time complexity O(n^2)
def bad_two_sum?(arr, target_sum)
    arr.each_with_index do |ele1,idx1|
        arr.each_with_index do |ele2,idx2|
            return true if idx2 > idx1 && (ele1 + ele2) == target_sum
        end
    end

    false

end

arr = [0, 1, 5, 7, 8]
[0,1,5]
p bad_two_sum?(arr, 6) # => should be true
p bad_two_sum?(arr, 10) # => should be false


#binary search 
# log n 
def okay_two_sum?(arr,target_sum)
    sorted = quick_sort(arr) 

    return arr if arr.length < 2
    sorted.each_with_index do |ele, idx|
        if target_sum > ele 
            mid = (idx - 1)
        end
    end

    left = arr[0..mid]

    left.each_with_index do |ele1, idx1|
        
    end

    if target_sum < arr[mid]
        return okay_two_sum?(left,target_sum)
    else
        result = okay_two_sum?(right,target_sum)
        result == nil ? nil : result + mid + 1
    end

    false
end

#n log n 

# def quick_sort(arr)
#     return arr if arr.length < 2
#     pivot = arr[0]

#     left = arr[1..-1].select{|ele| ele < pivot}
#     right = arr[1..-1].select{|ele| ele > pivot}

#     quick_sort(left) + [pivot] + quick_sort(right)
    
# end

# # p quick_sort([10,9,7,3,67])
# p okay_two_sum?(arr, 6) # => should be true
# p okay_two_sum?(arr, 10) # => should be false


# def okay_two_sum?(arr,target_sum)
#     sorted = quick_sort(arr) 

#     return arr if arr.length < 2
#     sorted.each_with_index do |ele, idx|
#         if target_sum > ele 
#             mid = (idx - 1)
#         end
#     end

#     left = arr[0..mid]

#     left.each_with_index do |ele1, idx1|
        
#     end

#     if target_sum < arr[mid]
#         return okay_two_sum?(left,target_sum)
#     else
#         result = okay_two_sum?(right,target_sum)
#         result == nil ? nil : result + mid + 1
#     end

#     false
# end


arr = [0, 1, 5, 7, 8]

def two_sum?(arr, target_sum)
  complements = {}

  arr.each do |el|
    complements[el] = true
    return true if complements[target_sum - el]
  end

  false
end

p two_sum?(arr,6)
p two_sum?(arr,7)
