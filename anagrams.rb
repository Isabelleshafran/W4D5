# require 'byebug'

#PHASE 1 

# n! - permutation is doing factorial under the hood

def first_anagram(string1, string2)
    array2 = []
    array = string1.split('').permutation.to_a #return a 2d array 
    array.each { |ele| array2 << ele.join('') }
    array2.each { |el| return true if el == string2 }
    false
end

# p first_anagram("elvis", "lives")
# p first_anagram("gizmo", "sally") 


def second_anagram(string1, string2)
    return false if string1.length != string2.length

    (0...string1.length).each do |i|
        if string2.include?(string1[i])
            string2.delete!(string1[i])
        end
    end
    p string1
    p string2

    return true if string2.length == 0
    false
end


# p second_anagram("elvis", "lives")
# p second_anagram("gizmo", "sally") 
# p second_anagram("ll", "lll")

alphabet = ('a'..'z').to_a


def third_anagram(string1, string2, alphabet)
    alphabet ||= ('a'..'z').to_a

    sorted = false
    while !sorted 
        sorted = true
        # debugger
        (0...string1.length - 1).to_a.each do |i|
            if alphabet.index(string1[i]) > alphabet.index(string1[i + 1])
                string1[i], string1[i + 1] = string1[i + 1], string1[i]
                sorted = false
            end
        end
    end

    sorted = false
    while !sorted 
        sorted = true
        # debugger
        (0...string2.length - 1).to_a.each do |i|
            if alphabet.index(string2[i]) > alphabet.index(string2[i + 1])
                string2[i], string2[i + 1] = string2[i + 1], string2[i]
                sorted = false
            end
        end
    end
    string1 == string2
end



# p third_anagram('elvis', 'lives', alphabet)
# p third_anagram("gizmo", "sally", alphabet) 


#time complexity - o(n)
def fourth_anagram(string1,string2)
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)

    string1.each_char {|char| hash1[char] += 1}
    string2.each_char {|char| hash2[char] += 1}    

    hash1 == hash2

end


p fourth_anagram('elvis', 'lives')
p fourth_anagram("gizmo", "sally" ) 