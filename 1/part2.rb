#!/usr/bin/ruby

file = ARGV.first
input = File.read(file)

arr1 = []
arr2 = []
sum = 0
input.each_line do |line|
  first, second = line.split(" ")
  arr1 << first.to_i
  arr2 << second.to_i
end

raise "Arrays not equal" unless arr1.count == arr2.count
tally1 = arr1.tally
tally2 = arr2.tally

tally1.each do |key, value|
  sum += key * value * tally2.fetch(key, 0)
end

puts sum
