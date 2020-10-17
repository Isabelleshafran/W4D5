
#MY_MIN

#Phase 1 - O(n^2) beacuse our input is the array and we're looping through it twice 

# - potentially use bsearch as were looking for a target (maybe not? because we arent given num)
# - nested loop where u compare pairs 

array = [0, 3, 5, 4, -5, 10, 1, 90]

def my_min(array)
    smallest_num = array[0]
    array.each_with_index do |ele1, idx1|
        array.each_with_index do |ele2, idx2|
            if idx2 > idx1 && ele1 < ele2 && ele1 < smallest_num
                smallest_num = ele1
            end
        end
    end
    smallest_num
end

# p my_min(array)

#Phase 2 - O(n)

def my_min2(array)
    min = array[0]
    array.each do |ele|
        if ele < min
            min = ele 
        end
    end
    min 
end

# p my_min2(array)


# list = [5, 3, -7]
list = [2, 3, -6, 7, -6, 7]
# list = [-5, -1, -3]

# O (n^3)

#when key'ing into a range it add another layer of ineffeciency aka making it from O^2 to O^3

#think of range as being another O(n) operatiion 

def largest_contiguous_subsum(list)
    subs = []
    (0...list.length).each do |start_idx|
        (start_idx...list.length).each do |end_idx|
            subs << list[start_idx..end_idx]  
        end
    end

    subs.map {|sub| sub.sum}.max

end



#O(n) #the way we have it rn is O(n^2)
# def largest_contiguous_subsum(list)
#     max = list[0]
#     current_sum = 0

#     (0...list.length-1).each do |i|
#         current_sum = list[i] + list[i+1..-1].sum #chaining diff than nested -- this line equates to On + On which is 2n which become n 
#         if current_sum > max 
#             max = current_sum
#         end
#     end

#     max

# end


#  list = [5, 3, -7]

list = [2, 3, -6, 7, -6, 7]

#when value is neg we reset to 0 

#O(n) time complexity because we only iterate once and we are keying in rather than range 
def largest_contiguous_subsum(list)
    max = list[0] #2
    current_sum = list[0]

    (1...list.length).each do |i|
        current_sum += list[i]
        if current_sum > max
             max = current_sum
        end 
        if current_sum < 0 
            current_sum = 0
        end
    end 
    max
end

p largest_contiguous_subsum(list)