def sleep_in?(**options)

  current_day = "Friday"
  if current_day == "Monday" || current_day == "Tuesday" || current_day == "Wednesday" || current_day == "Thursday" || current_day == "Friday"
    false
  else
    true
  end

  options[:vacation] ? true : false
end

def del_del(string)
  string.gsub("del","")
end

def missing_char(string,int)
  string.slice!(int)
  string
end

def near_hundred(int)
  if int.class != Fixnum
    raise "Please enter a number!"
  end
  int.between?(90,100) || int.between?(100,110) ? true : false
end

class String
  def back_around
    to_array = self.chars
    to_array.insert(0,to_array.last)
    to_array.slice(-1)
    to_array.join("")
  end
end
