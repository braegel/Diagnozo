#!/usr/bin/env ruby

require '../lib/Diagnose.rb'

diagnosesis = read_diagnozo

diagnosesis.each do |diagnose| 
  diagnose.print
end