############################################################
#
#  name:        Ryan Teskey
#  Assignment:  Assignment 5
#  Date:        1/31/2011
#  Class:       CIS 282
#  Ruby Version: 1.9.2
#  Description: makes a histogram
#
############################################################
def find_range(arr,low,high)
  return arr.find_all{|item| item >=low && item <= high}.length
end
def display_row(arr,low,high)
  leading_zero = low == 1 ? '01' : low

  #max_spaces = arr.max.to_s.length
  #min_spaces = arr.min.to_s.length == 1 ? 2 : arr.min.length
  #
  #arr.each{|value|
  #  "  #{leading_zero} to  #{high}:".length
  #}
  if high < 100
    print "  #{leading_zero} to  #{high}:" + ' '* 2 + '|'
  else
    print "  #{leading_zero} to  #{high}:" + ' '* 1 + '|'
  end

  puts '#' * find_range(arr,low,high)
end
#def display_all(arr)
#  max_spaces = arr.max.to_s.length
#  min_spaces = arr.min.to_s.length == 1 ? 2 : arr.min.length
#  arr.each{|value|
#    puts (value.to_s.length <= max_spaces ? max_spaces - value.to_s.length : value.to_s.length)
#  }
#end
random = []
#arr = [0,1,2,3,4,5,6,7,8,9,10,5,4,3,6,8,9,3,8,4,8,21,11,12,13,14,15,36,16,17,18,19,20,132,87232]
#puts arr.max.to_s.length
200.times do
  random << (rand(100) + 1)
end

#puts display_all(arr)
counter = 0
10.times do
  display_row(random,01 + counter,10 + counter)
  counter += 10
end