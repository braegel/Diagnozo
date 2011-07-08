##!/usr/bin/env ruby
require 'cgi'

require '../../lib/Diagnose.rb'

diagnosesis = read_diagnozo('../../data/diagnozo.xml')


cgi = CGI.new
puts cgi.header
puts "<HTML><BODY>"

diagnosesis.each do |diagnose|
  puts "<H2>#{diagnose.name}</H2>"
  puts diagnose.tags2html
end
puts "\n</BODY></HTML>\n"
