#!/usr/bin/env ruby

require 'cgi'
require '../../lib/Diagnose.rb'
require '../../lib/Tags.rb'

def collect_tags(diagnosesis)
  tags=Tags.new
  
  diagnosesis.each do |diagnose|

    diagnose.anamnesis.each do |tag|
      p tag
      tags.anamnesis[tag]= tags.anamnesis[tag]+1
    end
    diagnose.pe.each do |tag|
      tags.pe[tag]= tags.pe[tag]+1
    end
    diagnose.region.each do |tag|
      tags.region[tag]= tags.region[tag]+1
    end
    diagnose.xray.each do |tag|
      tags.xray[tag]= tags.xray[tag]+1
    end
    diagnose.ct.each do |tag|
      tags.ct[tag]= tags.ct[tag]+1
    end
    diagnose.mri.each do |tag|
      tags.mri[tag]= tags.mri[tag]+1
    end

  end
  
  tags
end

diagnosesis = read_diagnozo('../../data/diagnozo.xml')


cgi = CGI.new
puts cgi.header
puts "<HTML><BODY>"

usedtags=Tags.new
usedtags=collect_tags(diagnosesis)
#usedtags.sort


puts "<FORM>"
puts "<H2>All used tags</H2>"
puts usedtags.htmlformitems
puts "<input type=\"submit\" value=\" Query \">"
puts "</FORM>"

puts "\n</BODY></HTML>\n"
