require 'rexml/document' 

module Enumerable
  def dups
    inject({}) {|h,v| h[v]=h[v].to_i+1; h}.reject{|k,v| v==1}.keys
  end
end

diagnosesis = Array.new

xml = REXML::Document.new(File.open("../data/diagnozo.xml"))

xml.elements.each("//diagnosis") {|c| diagnosesis << c.attributes["name"] }

diagnosesis.sort!

puts "\nDuplicated diagnosesis:\n"
if diagnosesis.dups.size != 0
  puts "/t#{diagnosesis.dups.inspect}"
else
  puts "\tnone\n"
end

puts "\nAll diagnosis:"
diagnosesis.each do |diagnosis|
  puts "\t#{diagnosis}"
end
