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
  attr_accessor :url,:anamnesis,:pe,:region,:xray,:mri, :ct, :dd
  
  def initialize(name)
    @name=name
    @url=Array.new
    @anamnesis=Array.new
    @pe=Array.new
    @region=Array.new
    @xray=Array.new
    @ct=Array.new
    @mri=Array.new
    @dd=Array.new    
  end

  def tags2html
    html = ""
    
    html += "<DL>\n"
    
    @url.each do |url|
      html += "\t<DT>url</DT><DD>#{url}</DD>\n"
    end
    @region.each do |url|
      html += "\t<DT>region</DT><DD>#{url}</DD>\n"
    end
    @xray.each do |url|
      html += "\t<DT>xray</DT><DD>#{url}</DD>\n"
    end
    @ct.each do |url|
      html += "\t<DT>ct</DT><DD>#{url}</DD>\n"
    end
    @mri.each do |url|
      html += "\t<DT>mri</DT><DD>#{url}</DD>\n"
    end
    
    html += "</DL>\n"
    
    html
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