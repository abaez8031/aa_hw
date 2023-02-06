def sluggish_octopus(array)
  longest = array[0]
  (0...array.length).each do |i|
    (0...array.length).each do |j|
      first = array[i]
      second = array[j]
      if first > second
        longest = first
      else
        longest = second
      end
    end
  end
  longest
end

# p sluggish_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
# => "fiiiissshhhhhh"

def dominant_octopus(array)
  pivot = array[0]
  return pivot if array.length == 1
  right = array.select { |ele| ele.length > pivot.length }
  dominant_octopus(right)
end

p dominant_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
# => "fiiiissshhhhhh"

def clever_octopus(array)
  longest = array[0]
  array.each do |ele|
    if ele.length > longest.length
      longest = ele
    end
  end
  longest
end

# p clever_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
# => "fiiiissshhhhhh"

def slow_dance(direction,array)
  array.each_with_index do |ele,i|
    return i if ele == direction
  end
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

# p slow_dance("up",tiles_array)
# p slow_dance("right-down", tiles_array)

tiles_hash = {
  "up" => 0, "right-up" => 1, "right" => 2, "right-down" => 3, "down" => 4, "left-down" => 5, "left" => 6, "left-up" => 7
}

def fast_dance(direction, tiles_hash)
  tiles_hash[direction]
end

# p fast_dance("up", tiles_hash)
# p fast_dance("right-down", tiles_hash)