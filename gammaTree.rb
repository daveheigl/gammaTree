#!/usr/bin/env ruby

#this program reads the input file, counts the raw characters that aren't punctuation and prints them
#eventual goal is to do pattern finding in hebrew

#pulled value data from https://www.hebcal.com/home/1824/numerical-values-of-hebrew-letters
puts "start of program"
letterToNumber = Hash.new

if ARGV.length != 2
  puts "Usage: gamValues.rb pointValue.csv textToConvert"
  exit
end

File.readlines(ARGV[0], chomp:true).each do |line|
   puts "#{line}"
   localArray = line.split(",");
   if(localArray.count == 2)
      letterToNumber[localArray[0]] = localArray[1];
      puts "Hash contains #{letterToNumber.count}"
   end
end

puts "/n --- /n"


inputFile = File.open(ARGV[1], "r:utf-8")
textLines = inputFile.readlines
text = textLines.join
inputFile.close

#text = ARGV[1]
puts "Counted #{text.length} raw characters\n\n";

i = 1
textTotal = 0

for b in text.chars do

     if b >= "א"
          puts "#{b}\t#{i}\t#{letterToNumber[b]}"
          textTotal += letterToNumber[b].to_i;
          i+=1
     end
end

puts "Counted #{i-1} non-punctuation characters\n\n";
puts "Total counted value: #{textTotal}"
