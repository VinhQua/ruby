def determine_day_part
    current_hour = Time.new.hour
    if (current_hour > 3 && current_hour < 12) 
        time = "morning"
    elsif (current_hour > 12 && current_hour < 18) 
        time = "afternoon"
    elsif (current_hour > 18 && current_hour < 24)
        time = "evening"
    else
        time = "night"
    end
    return time
    
end
def greeting(name)

    puts ("Good #{determine_day_part}, #{name}")
    
end
greeting("Shadow")