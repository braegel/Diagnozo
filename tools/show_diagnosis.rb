require '../lib/Diagnose.rb'

diagnosesis = read_diagnozo('../data/diagnozo.xml')

diagnosesis.each do |diagnose| 
  diagnose.print
end