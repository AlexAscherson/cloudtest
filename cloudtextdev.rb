require 'pry'

# Store strings
puts "Enter text to search"
text = gets.upcase.chomp.chars
puts "enter search string"
subtext = gets.upcase.chomp.chars

$stringsearchingfor = 0
$matcharray = []
$result = ""

def checkformatches(text, subtext)
   
  text.each_with_index do | val, i |
    puts "checking "+ val
    # Is the first letter found?
    if subtext[$stringsearchingfor] == val
      # First letter found
      puts "found a match in this loop"
      #if its the first match store index position of match
      if $stringsearchingfor == 0
        puts "its the first match so keep the index number"
       $matchindex = i 
      end
      $stringsearchingfor +=1
      # Check if its the last loop
      if subtext.length == $stringsearchingfor
        puts "its the last letter in the search and its a match string so carry on from start"
        $stringsearchingfor = 0
        $matcharray << ($matchindex + 1) 
      else
        puts "its not the last letter so carry on"
        next
      end

    else
      puts "no match / incomplete match found so check next"
      $stringsearchingfor = 0
    end
  end
  
  # Format result as comma seperated string
  $matcharray.each_with_index do | val, i |
    if $matcharray.count == 1
      $result.concat(val.to_s)
    elsif $matcharray.count == (i+1)
      $result.concat(val.to_s)
    else
      $result.concat(val.to_s + ",")
    end
  end
  puts "result:" + $result
  return $result
 
 end

checkformatches(text, subtext)
