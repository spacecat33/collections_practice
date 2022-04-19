# Question 1
def sort_array_asc(numbers)
    numbers.sort do |a, b|
        a <=> b
    end
end


# Question 2
def sort_array_desc(numbers)
    numbers.sort do |a, b|
        b <=> a
    end
end


# Question 3
def sort_array_char_count(numbers)
    numbers.sort do |a, b|
        a.length <=> b.length
    end
end


# Question 4a
def swap_elements(numbers)
    numbers[1], numbers[2] = numbers[2], numbers[1]
    numbers
end

# Question 4b (BONUS)
def swap_elements_from_to(array, index, destination_index)
    array[index], array[destination_index] = array[destination_index], array[index]
    array
  end



# Question 5
def reverse_array(numbers) 
    numbers.reverse do |a, b|
    end
end


# Question 6  # DO NOT USE .collect or .map. use .each to build a new array, like in the "my_each"/"reverse_each_word" lab!
def kesha_maker(array)
    array.each {|word| word[2] = "$"}
end


# Question 7
def find_a(array)
    array.select do |word|
        word.start_with?("a")
    end
end


# Question 8a 
def sum_array(numbers) 
    sum = 0
    numbers.each { |i| sum+=i } #alternatively can state "numbers.map" instead of "numbers.each"
    sum
end

# Question 8b (BONUS) #for a bonus, look up the `.inject` method to get this test passing
def sum_array(numbers)
    numbers.inject(0) {|sum, number| sum + number}
end



# Question 9
def add_s(words)
    words.collect do |word|  # alternatively, can use ".map" instead of ".collect"
        if words[1] == word
            word
        else
            word + "s"
        end
    end
end

#OR
def add_s(words)
    words.map.with_index do |word, position|  
        if position != 1
            word << "s"
        else
            word 
        end
    end
end

#OR
def add_s(words)
    words.each_with_index do |word, position|  
    word[word.length] = "s" unless position == 1
    end
end

#OR
def add_s(words)
    words.each_with_index.collect do |word, position| 
        if position != 1
            word << "s"
        else
            word 
        end
    end
end