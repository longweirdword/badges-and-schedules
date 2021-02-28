def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(array)
    badges= []
    array.each{|name| badges << badge_maker(name)}
    return badges 
end 

def assign_rooms(speaker)
    speaker.each_with_index.collect do |name, index|
        "Hello, #{name}! You'll be assigned to room #{index + 1}!"
    end 
end 

def printer(name)
    batch_badge_creator(name).each{|badge| puts badge}
    assign_rooms(name).each{|room| puts room}
end 