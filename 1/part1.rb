#!/usr/bin/ruby

file = ARGV.first
input = File.read(file)

arr1 = []
arr2 = []
diff = []
input.each_line do |line|
  first, second = line.split(" ")
  arr1 << first.to_i
  arr2 << second.to_i
end

raise "Arrays not equal" unless arr1.count == arr2.count
arr1 = arr1.sort
arr2 = arr2.sort

arr1.each_with_index do |_el, index|
  diff << (arr1[index] - arr2[index]).abs
end

puts diff.sum
