def oxford_comma(array)
  holder_string = ""
  counter = 0
  #take in array
  #return entire array with ", " after each word except after last word
    
          array.each do |word|
            holder_string << "#{word}; "
          end
          
    if array.length > 2
  #create an array of each word including the "," array.split
  #then .insert(-2,"and ")
    holder_string = holder_string.chomp
    holder_array = holder_string.split(";")
    holder_array.pop
    
   holder_array.insert(-2,"and")
 
    holder_string2 = ""
    holder_array.each do |word|
            holder_string2 << "#{word},"
    end
    
    
   
    
    holder_string2.gsub("and,", " and").chomp(",")
    elsif array.length == 2
        holder_string.sub!(";"," and").chomp("; ")

    else
        holder_string.chomp("; ")
        
    end #end if
end