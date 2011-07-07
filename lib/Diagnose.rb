require 'xmlsimple'

def read_diagnozo(path)
  diagnozo = XmlSimple.xml_in(path)

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
  return diagnosis
end

class Diagnose
  attr_reader :name
  attr_accessor :url,:region,:xray,:mri, :ct, :dd
  
  def initialize(name)
    @name=name
    @url=Array.new
    @region=Array.new
    @xray=Array.new
    @ct=Array.new
    @mri=Array.new
    @dd=Array.new    
  end
  
  def print
    puts "Diagnosis name: '#{name}'"

      @url.each do |url|
        puts "\turl: #{url}"
      end
      @region.each do |url|
        puts "\tregion: #{url}"
      end
      @xray.each do |url|
        puts "\txray: #{url}"
      end
      @ct.each do |url|
        puts "\tct: #{url}"
      end
      @mri.each do |url|
        puts "\tmri: #{url}"
      end
    puts
  end  
end