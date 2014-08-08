############################################################
#  name:        Ryan Teskey
#  Assignment:  Assignment 5
#  Date:        1/31/2011
#  Class:       CIS 282
#  Ruby Version: 1.9.2
#  Description: makes a histogram
############################################################
def find_range(arr,low,high)
  arr.find_all{|item| item >=low && item <= high}.length
end
def display_row(arr,low,high)
  leading_zero = low == 1 ? '01' : low
  if high < 100
    print "  #{leading_zero} to  #{high}:" + ' '* 2 + '|'
  else
    print "  #{leading_zero} to  #{high}:" + ' '* 1 + '|'
  end
  puts '#' * find_range(arr,low,high)
end
random = []
200.times do
  random << (rand(100) + 1)
end
counter = 0
10.times do
  display_row(random,01 + counter,10 + counter)
  counter += 10
end