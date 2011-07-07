require 'xmlsimple'
require '../lib/Diagnose.rb'
diagnozo = XmlSimple.xml_in('../data/diagnozo.xml')

diagnosis = Array.new

diagnozo['diagnosis'].each do |diagnose|
  adiagnose=Diagnose.new(diagnose['name'])

  if diagnose['url']
    diagnose['url'].each { |url| adiagnose.url << url}
  end
    
  if diagnose['region']
    diagnose['region'].each { |region| adiagnose.region << region}
  end

  if diagnose['xray']
    diagnose['xray'].each { |xray| adiagnose.xray << xray}
  end
  
  if diagnose['ct']
    diagnose['ct'].each { |ct| adiagnose.ct << ct}
  end

  if diagnose['mri']
    diagnose['mri'].each { |mri| adiagnose.mri << mri}
  end
  
  if diagnose['dd']
    diagnose['dd'].each { |dd| adiagnose.dd << dd}
  end
  
  diagnosis << adiagnose
end


diagnosis.each do |diagnose| 
  diagnose.print
end