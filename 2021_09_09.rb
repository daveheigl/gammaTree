#!/usr/bin/env ruby

#this program reads the input file, counts the raw characters that aren't punctuation and prints them
#eventual goal is to do pattern finding in hebrew

#pulled value data from https://www.hebcal.com/home/1824/numerical-values-of-hebrew-letters
puts "start of program"

File.readlines('gamValues.csv', chomp:true).each do |line|
   puts "#{line}"
end

puts "/n --- /n"

inputFile = File.open("gen1-1.txt", "r:utf-8")
textLines = inputFile.readlines
text = textLines.join
inputFile.close

puts "Counted #{text.length} raw characters in gen 1:1\n\n";

i = 1
for b in text.chars do

     if b >= "א"
          puts "#{b} #{i}"
          i+=1
     end
end

puts "Counted #{i-1} non-punctuation characters in gen 1:1\n\n";
