require 'pry'

def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort.reverse
end

def sort_array_char_count(words)
  words.sort_by { |word| word.length }
end

def swap_elements(array)
  second, third = array[1], array[2]
  array[1], array[2] = third, second
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  array.map! { |word| word[0..1] + "$" + word[3..word.length] }
end

def find_a(array)
  array.select { |word| word[0] == "a" }
end

def sum_array(array)
  array.reduce(:+)
end

def add_s(array)
  added = []

  array.each_with_index do |word, idx|
    if idx != 1
      added << word + "s"
    else
      added << word
    end
  end
  added
end
