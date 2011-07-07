class Tags
  attr_accessor :xray,:ct,:mri
  
  def initialize
    @xray=Hash.new(0)
    @ct=Hash.new(0)
    @mri=Hash.new(0)
  end
  
  def print

    if @xray.size>0
      puts "xray:"
      @xray.sort {|a,b| b[1]<=>a[1]}.each do |key,value|
        puts "\t#{key}"
      end
      puts
    end

    if @ct.size>0
      puts "ct:"
      @ct.sort {|a,b| b[1]<=>a[1]}.each do |key,value|
        puts "\t#{key}"
      end
      puts

    end

    if @mri.size>0
      puts "mrt:"
      @mri.sort {|a,b| b[1]<=>a[1]}.each do |key,value|
        puts "\t#{key}"
      end
      puts
    end
  end
  
  def printhtml

     if @xray.size>0
       puts "<H3>xray:</H3>"
       puts "<OL>"
       @xray.sort {|a,b| b[1]<=>a[1]}.each do |key,value|
         puts "<LI>#{key}</LI>"
       end
       puts "</OL>"
       puts
     end

     if @ct.size>0
       puts "<H3>ct:</H3>"
       puts "<OL>"
       @ct.sort {|a,b| b[1]<=>a[1]}.each do |key,value|
         puts "<LI>#{key}</LI>"
       end
       puts "</OL>"
       puts

     end

     if @mri.size>0
       puts "<H3>mrt:</H3>"
       puts "<OL>"
       @mri.sort {|a,b| b[1]<=>a[1]}.each do |key,value|
         puts "<LI>#{key}</LI>"
       end
       puts "</OL>"
       puts
     end
   end
  
  
end