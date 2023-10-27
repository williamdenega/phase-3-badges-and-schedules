require 'pry'

# Write your code here.

def badge_maker name
    "Hello, my name is #{name}."
end

def batch_badge_creator arr
    batch = []
    arr.each {|name|  batch << badge_maker(name) }
    #badge_maker(name)
    batch
end

def assign_rooms arr
    room_list = []
    arr.each_with_index {|name,index| room_list << "Hello, #{name}! You'll be assigned to room #{index+1}!"}
    room_list
end

def printer arr
    batch_badge_creator(arr).each {|msg| puts msg}
    assign_rooms(arr).each {|msg| puts msg}

end


binding.pry