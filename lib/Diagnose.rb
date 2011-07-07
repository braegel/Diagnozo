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