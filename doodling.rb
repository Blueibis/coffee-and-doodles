array = Array.new(8) {|i| 12 ** i}
#OR result = [1]
#(1..7).each do |exponent|
#value = result.last * 12
#result << value
#end
# ******************************************************************************
words = ['first', 'second', 'third', 'fourth', 'fifth', 'sixth']
# reverses each word then reverses whole array
words.reverse!.each {|x| x.reverse!}
movies =
[['Alfonso Cuaron', 'Gravity'],
['Spike Jonze', 'Her'],
['Martin Scorsese', 'The Wolf of Wall Street']]
#*******************************************************************************

def multiply(numbers)
  total = nil
  numbers.each do |number|
    if total == nil
      total = number
    else
      total *= number
  end
end
  total
end
arr = [1, 12, 144, 1728, 20736, 248832, 2985984, 35831808]
#all of the below are valid, whatever works right?
arr.reduce(:*)
# => 1648446623609512543951043690496
#or
#calls our multiply method on the array of numbers we created
multiply(arr)
# => 1648446623609512543951043690496
#or
arr.inject(:*)
# => 1648446623609512543951043690496
#*******************************************************************************
def find_longest(array)
  result = nil
  array.each do |word|
    if result == nil
      result = word
      # replaces what we store in our result variable when the word is longer
    elsif word.length > result.length
      result = word
    else
    end
  end
     #catches all other words that have the same length as our result
    array.select do |word|
    word.length == result.length
  end
end

colours = ["red", "blue", "green", "yellow", "chartreuse", "orange", "periwinkle", "tomato", "cobalt"]
puts find_longest(colours)
# => ["chartreuse", "periwinkle"]
#*******************************************************************************
song = [["row", 3], ["your", 1], ["boat", 1]]
def unnest_arr(arr)
  result = []
  # iterates over our nested song array so each iteration is itself an array
  arr.each do |array|
    array[1].times { result << array[0] }
  end
  return result
end

print "#{unnest_arr(song)}\n"
# => ["row", "row", "row", "your", "boat"]
#*******************************************************************************
def create_phone_number(p_arr)
  #checks that argument is an array and at least 10 elements
  return false if !p_arr.is_a?(Array) || p_arr.size < 10
  #takes first 10 elements, interpolates into phone number
  "(#{p_arr[0..2].join}) #{p_arr[3..5].join}-#{p_arr[6..8].join}"
end
create_phone_number(23)
create_phone_number([1, 2, 3, 4, 5, 6])
create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])

def valid_phone_number(arg)
  #checks that argument is string
  return false if !arg.is_a?(String)
  #compares argument string
  val = arg <=> "(123) 456-7890"
  val2 = arg <=> "(123) 456-78901"
  if  val2 == 1 && val >= 0
    true
  else
    false
  end
end
valid_phone_number("(123) 456-7899")
#*******************************************************************************

def sentence(arr)
  piece = arr.last
  arr.delete(piece)
  puts "#{arr.join(", ")} and #{piece}."
end

sentence(%w(banana cherry apple fruit-punch))
#*******************************************************************************

def easy_valid_phone_number(str)
  #checks string against regular expression(read docs!)
  if str =~ /\A\(\d{3}\)\s\d{3}\-\d{4}\z/
    return true
  else
    return false
  end
end
easy_valid_phone_number("(111) 222-9999")

#*******************************************************************************

violations = [{violation_category: "Garbage and Refuse", date: "2012-11-01 00:00:00", inspection_id: "232528"},
{violation_category: "Unsanitary Conditions", date: "2012-12-26 00:00:00", inspection_id: "230544"},
{violation_category: "Garbage and Refuse", date: "2012-12-26 00:00:00", inspection_id: "230543"},
{violation_category: "Garbage and Refuse", date: "2012-12-20 00:00:00", inspection_id: "230525"},
{violation_category: "Garbage and Refuse", date: "2012-12-20 00:00:00", inspection_id: "230524"},
{violation_category: "Animals and Pests", date: "2012-12-19 00:00:00", inspection_id: "230404"},
{violation_category: "Animals and Pests", date: "2012-12-19 00:00:00", inspection_id: "230403"},
{violation_category: "Garbage and Refuse", date: "2012-12-19 00:00:00", inspection_id: "230402"},
{violation_category: "Garbage and Refuse", date: "2012-12-19 00:00:00", inspection_id: "230401"},
{violation_category: "Building Conditions", date: "2012-12-19 00:00:00", inspection_id: "230400"},
{violation_category: "Garbage and Refuse", date: "2012-12-19 00:00:00", inspection_id: "230399"},
{violation_category: "Animals and Pests", date: "2012-12-19 00:00:00", inspection_id: "230398"},
{violation_category: "Garbage and Refuse", date: "2012-12-19 00:00:00", inspection_id: "230397"},
{violation_category: "Unsanitary Conditions", date: "2012-12-19 00:00:00", inspection_id: "230396"},
{violation_category: "Garbage and Refuse", date: "2012-12-19 00:00:00", inspection_id: "230395"},
{violation_category: "Unsanitary Conditions", date: "2012-12-19 00:00:00", inspection_id: "230394"},
{violation_category: "Animals and Pests", date: "2012-12-18 00:00:00", inspection_id: "229817"},
{violation_category: "Vegetation", date: "2012-12-12 00:00:00", inspection_id: "229677"},
{violation_category: "Garbage and Refuse", date: "2012-12-18 00:00:00", inspection_id: "229670"},
{violation_category: "Unsanitary Conditions", date: "2012-12-18 00:00:00", inspection_id: "229667"},
{violation_category: "Animals and Pests", date: "2012-12-11 00:00:00", inspection_id: "229638"},
{violation_category: "Unsanitary Conditions", date: "2012-12-05 00:00:00", inspection_id: "229496"},
{violation_category: "Garbage and Refuse", date: "2012-12-05 00:00:00", inspection_id: "229491"},
{violation_category: "Animals and Pests", date: "2012-12-05 00:00:00", inspection_id: "229490"},
{violation_category: "Animals and Pests", date: "2012-12-05 00:00:00", inspection_id: "229489"},
{violation_category: "Animals and Pests", date: "2012-12-05 00:00:00", inspection_id: "229488"},
{violation_category: "Building Conditions", date: "2012-12-05 00:00:00", inspection_id: "229487"},
{violation_category: "Animals and Pests", date: "2012-12-17 00:00:00", inspection_id: "229431"},
{violation_category: "Animals and Pests", date: "2012-12-12 00:00:00", inspection_id: "229356"},
{violation_category: "Animals and Pests", date: "2012-12-12 00:00:00", inspection_id: "229348"},
{violation_category: "Garbage and Refuse", date: "2012-12-12 00:00:00", inspection_id: "229347"},
{violation_category: "Unsanitary Conditions", date: "2012-12-10 00:00:00", inspection_id: "228914"},
{violation_category: "Animals and Pests", date: "2012-12-10 00:00:00", inspection_id: "228913"},
{violation_category: "Chemical Hazards", date: "2012-12-10 00:00:00", inspection_id: "228912"},
{violation_category: "Chemical Hazards", date: "2012-12-10 00:00:00", inspection_id: "228911"},
{violation_category: "Vegetation", date: "2012-12-10 00:00:00", inspection_id: "228910"},
{violation_category: "Chemical Hazards", date: "2012-12-10 00:00:00", inspection_id: "228909"},
{violation_category: "Unsanitary Conditions", date: "2012-12-26 00:00:00", inspection_id: "230050"},
{violation_category: "Garbage and Refuse", date: "2012-12-24 00:00:00", inspection_id: "230027"},
{violation_category: "Garbage and Refuse", date: "2012-12-24 00:00:00", inspection_id: "230026"},
{violation_category: "Unsanitary Conditions", date: "2012-11-29 00:00:00", inspection_id: "230008"},
{violation_category: "Garbage and Refuse", date: "2012-11-29 00:00:00", inspection_id: "230007"},
{violation_category: "Garbage and Refuse", date: "2012-12-21 00:00:00", inspection_id: "229997"},
{violation_category: "Garbage and Refuse", date: "2012-12-21 00:00:00", inspection_id: "229996"},
{violation_category: "Vegetation", date: "2012-07-25 00:00:00", inspection_id: "229955"},
{violation_category: "Garbage and Refuse", date: "2012-07-25 00:00:00", inspection_id: "229954"},
{violation_category: "Garbage and Refuse", date: "2012-07-25 00:00:00", inspection_id: "229953"},
{violation_category: "Garbage and Refuse", date: "2012-07-25 00:00:00", inspection_id: "229952"},
{violation_category: "Animals and Pests", date: "2012-07-25 00:00:00", inspection_id: "229951"},
{violation_category: "Animals and Pests", date: "2012-07-25 00:00:00", inspection_id: "229950"},
{violation_category: "Chemical Hazards", date: "2012-07-25 00:00:00", inspection_id: "229949"},
{violation_category: "Unsanitary Conditions", date: "2012-07-25 00:00:00", inspection_id: "229948"},
{violation_category: "Unsanitary Conditions", date: "2012-12-28 00:00:00", inspection_id: "230162"},
{violation_category: "Animals and Pests", date: "2012-12-20 00:00:00", inspection_id: "229903"},
{violation_category: "Garbage and Refuse", date: "2012-12-19 00:00:00", inspection_id: "229836"},
{violation_category: "Garbage and Refuse", date: "2012-12-19 00:00:00", inspection_id: "229835"},
{violation_category: "Vegetation", date: "2012-12-07 00:00:00", inspection_id: "228684"},
{violation_category: "Garbage and Refuse", date: "2012-11-20 00:00:00", inspection_id: "228672"},
{violation_category: "Animals and Pests", date: "2012-12-04 00:00:00", inspection_id: "228610"},
{violation_category: "Animals and Pests", date: "2012-11-13 00:00:00", inspection_id: "228117"},
{violation_category: "Vegetation", date: "2012-11-13 00:00:00", inspection_id: "228113"},
{violation_category: "Garbage and Refuse", date: "2012-11-19 00:00:00", inspection_id: "228520"},
{violation_category: "Garbage and Refuse", date: "2012-12-06 00:00:00", inspection_id: "228480"},
{violation_category: "Animals and Pests", date: "2012-11-21 00:00:00", inspection_id: "228466"},
{violation_category: "Animals and Pests", date: "2012-12-05 00:00:00", inspection_id: "228457"},
{violation_category: "Vegetation", date: "2012-09-26 00:00:00", inspection_id: "228437"},
{violation_category: "Garbage and Refuse", date: "2012-12-05 00:00:00", inspection_id: "228436"},
{violation_category: "Garbage and Refuse", date: "2012-12-05 00:00:00", inspection_id: "228404"},
{violation_category: "Unsanitary Conditions", date: "2012-11-26 00:00:00", inspection_id: "228028"},
{violation_category: "Animals and Pests", date: "2012-11-26 00:00:00", inspection_id: "228027"},
{violation_category: "Animals and Pests", date: "2012-11-28 00:00:00", inspection_id: "228003"},
{violation_category: "Animals and Pests", date: "2012-11-27 00:00:00", inspection_id: "227988"},
{violation_category: "Animals and Pests", date: "2012-11-21 00:00:00", inspection_id: "227677"},
{violation_category: "Vegetation", date: "2012-11-20 00:00:00", inspection_id: "227612"},
{violation_category: "Garbage and Refuse", date: "2012-11-20 00:00:00", inspection_id: "227611"},
{violation_category: "Animals and Pests", date: "2012-11-14 00:00:00", inspection_id: "227274"},
{violation_category: "Animals and Pests", date: "2012-11-09 00:00:00", inspection_id: "227022"},
{violation_category: "Vegetation", date: "2012-11-09 00:00:00", inspection_id: "227021"},
{violation_category: "Chemical Hazards", date: "2012-11-02 00:00:00", inspection_id: "227020"},
{violation_category: "Animals and Pests", date: "2012-11-07 00:00:00", inspection_id: "227019"},
{violation_category: "Vegetation", date: "2012-11-07 00:00:00", inspection_id: "227018"},
{violation_category: "Chemical Hazards", date: "2012-11-07 00:00:00", inspection_id: "227017"},
{violation_category: "Garbage and Refuse", date: "2012-11-07 00:00:00", inspection_id: "226975"},
{violation_category: "Chemical Hazards", date: "2012-11-07 00:00:00", inspection_id: "226863"},
{violation_category: "Building Conditions", date: "2012-11-07 00:00:00", inspection_id: "226776"},
{violation_category: "Vegetation", date: "2012-11-05 00:00:00", inspection_id: "226532"},
{violation_category: "Animals and Pests", date: "2012-11-02 00:00:00", inspection_id: "226446"},
{violation_category: "Building Conditions", date: "2012-11-02 00:00:00", inspection_id: "226445"},
{violation_category: "Animals and Pests", date: "2012-10-31 00:00:00", inspection_id: "226393"},
{violation_category: "Animals and Pests", date: "2012-11-01 00:00:00", inspection_id: "226347"},
{violation_category: "Garbage and Refuse", date: "2012-11-01 00:00:00", inspection_id: "226346"},
{violation_category: "Animals and Pests", date: "2012-11-01 00:00:00", inspection_id: "226345"},
{violation_category: "Biohazards", date: "2012-11-01 00:00:00", inspection_id: "226332"},
{violation_category: "Animals and Pests", date: "2012-10-23 00:00:00", inspection_id: "226297"},
{violation_category: "Garbage and Refuse", date: "2012-08-14 00:00:00", inspection_id: "228391"},
{violation_category: "Vegetation", date: "2012-11-30 00:00:00", inspection_id: "228349"},
{violation_category: "Vegetation", date: "2012-11-27 00:00:00", inspection_id: "228348"},
{violation_category: "Vegetation", date: "2012-11-30 00:00:00", inspection_id: "228273"},
{violation_category: "Garbage and Refuse", date: "2012-12-12 00:00:00", inspection_id: "229174"},
{violation_category: "Building Conditions", date: "2012-11-05 00:00:00", inspection_id: "229134"},
{violation_category: "Unsanitary Conditions", date: "2012-11-05 00:00:00", inspection_id: "229133"},
{violation_category: "Chemical Hazards", date: "2012-11-05 00:00:00", inspection_id: "229132"},
{violation_category: "Vegetation", date: "2012-11-05 00:00:00", inspection_id: "229131"},
{violation_category: "Unsanitary Conditions", date: "2012-11-05 00:00:00", inspection_id: "229130"},
{violation_category: "Garbage and Refuse", date: "2012-11-14 00:00:00", inspection_id: "227168"},
{violation_category: "Vegetation", date: "2012-11-14 00:00:00", inspection_id: "227164"},
{violation_category: "Animals and Pests", date: "2012-11-14 00:00:00", inspection_id: "227153"},
{violation_category: "Animals and Pests", date: "2012-11-14 00:00:00", inspection_id: "227152"},
{violation_category: "Garbage and Refuse", date: "2012-11-08 00:00:00", inspection_id: "227104"},
{violation_category: "Building Conditions", date: "2012-11-13 00:00:00", inspection_id: "227083"},
{violation_category: "Garbage and Refuse", date: "2012-11-13 00:00:00", inspection_id: "227068"},
{violation_category: "Garbage and Refuse", date: "2012-12-13 00:00:00", inspection_id: "229279"},
{violation_category: "Unsanitary Conditions", date: "2012-10-24 00:00:00", inspection_id: "226251"},
{violation_category: "Building Conditions", date: "2012-10-24 00:00:00", inspection_id: "226250"},
{violation_category: "Animals and Pests", date: "2012-10-17 00:00:00", inspection_id: "226249"},
{violation_category: "Animals and Pests", date: "2012-10-23 00:00:00", inspection_id: "226018"},
{violation_category: "Unsanitary Conditions", date: "2012-10-23 00:00:00", inspection_id: "226017"},
{violation_category: "Animals and Pests", date: "2012-10-23 00:00:00", inspection_id: "226016"},
{violation_category: "Animals and Pests", date: "2012-10-22 00:00:00", inspection_id: "225600"},
{violation_category: "Animals and Pests", date: "2012-10-18 00:00:00", inspection_id: "225581"},
{violation_category: "Chemical Hazards", date: "2012-10-22 00:00:00", inspection_id: "225546"},
{violation_category: "Garbage and Refuse", date: "2012-10-19 00:00:00", inspection_id: "225457"},
{violation_category: "Unsanitary Conditions", date: "2012-10-26 00:00:00", inspection_id: "226068"},
{violation_category: "Building Conditions", date: "2012-10-02 00:00:00", inspection_id: "225101"},
{violation_category: "Building Conditions", date: "2012-10-15 00:00:00", inspection_id: "224854"},
{violation_category: "Animals and Pests", date: "2012-10-26 00:00:00", inspection_id: "225905"},
{violation_category: "Animals and Pests", date: "2012-10-17 00:00:00", inspection_id: "225880"},
{violation_category: "Garbage and Refuse", date: "2012-10-17 00:00:00", inspection_id: "225879"},
{violation_category: "Animals and Pests", date: "2012-10-25 00:00:00", inspection_id: "225836"},
{violation_category: "Garbage and Refuse", date: "2012-10-25 00:00:00", inspection_id: "225821"},
{violation_category: "Vegetation", date: "2012-10-25 00:00:00", inspection_id: "225776"},
{violation_category: "Vegetation", date: "2012-10-25 00:00:00", inspection_id: "225775"},
{violation_category: "Animals and Pests", date: "2012-10-25 00:00:00", inspection_id: "225774"},
{violation_category: "Building Conditions", date: "2012-10-25 00:00:00", inspection_id: "225773"},
{violation_category: "Animals and Pests", date: "2012-10-09 00:00:00", inspection_id: "224402"},
{violation_category: "Animals and Pests", date: "2012-10-09 00:00:00", inspection_id: "224401"},
{violation_category: "Animals and Pests", date: "2012-08-28 00:00:00", inspection_id: "224381"},
{violation_category: "Unsanitary Conditions", date: "2012-10-03 00:00:00", inspection_id: "225040"},
{violation_category: "Animals and Pests", date: "2012-09-20 00:00:00", inspection_id: "225007"},
{violation_category: "Vegetation", date: "2012-10-03 00:00:00", inspection_id: "224183"},
{violation_category: "Animals and Pests", date: "2012-10-03 00:00:00", inspection_id: "224130"},
{violation_category: "Animals and Pests", date: "2012-10-03 00:00:00", inspection_id: "224129"},
{violation_category: "Garbage and Refuse", date: "2012-10-03 00:00:00", inspection_id: "224124"},
{violation_category: "Unsanitary Conditions", date: "2012-09-20 00:00:00", inspection_id: "223821"},
{violation_category: "Garbage and Refuse", date: "2012-09-20 00:00:00", inspection_id: "223820"},
{violation_category: "Animals and Pests", date: "2012-09-20 00:00:00", inspection_id: "223819"},
{violation_category: "Unsanitary Conditions", date: "2012-09-20 00:00:00", inspection_id: "223818"},
{violation_category: "Animals and Pests", date: "2012-09-20 00:00:00", inspection_id: "223817"},
{violation_category: "Vegetation", date: "2012-09-20 00:00:00", inspection_id: "223816"},
{violation_category: "Vegetation", date: "2012-09-19 00:00:00", inspection_id: "223815"},
{violation_category: "Unsanitary Conditions", date: "2012-09-19 00:00:00", inspection_id: "223814"},
{violation_category: "Garbage and Refuse", date: "2012-09-19 00:00:00", inspection_id: "223813"} ]

def violation_method(arr)
  #create new hash with keys named after categories
  hash = Hash["Vegetation", 0, "Unsanitary Conditions", 0, "Garbage and Refuse", 0, "Animals and Pests", 0, "Building Conditions", 0, "Chemical Hazards", 0]
  #I don't know why this works, there's only one array...
  arr.each do |violation|
    case violation[:violation_category]
    when "Vegetation" then hash["Vegetation"] += 1
    when "Unsanitary Conditions" then hash["Unsanitary Conditions"] += 1
    when "Garbage and Refuse" then hash["Garbage and Refuse"] += 1
    when "Animals and Pests" then hash["Animals and Pests"] += 1
    when "Building Conditions" then hash["Building Conditions"] += 1
    when "Chemical Hazards" then hash["Chemical Hazards"] += 1
    end
  end
  hash.each do |category, count|
    puts "#{category}: #{count}"
  end
  puts "#{arr.count} violations in total"
end
def violation_date(arr)

end
violation_method(violations)
