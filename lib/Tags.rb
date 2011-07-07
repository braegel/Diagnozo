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
  
  def create_form_for_tags(tags)
    html = ""
    html+="<OL>\n"
    tags.sort {|a,b| b[1]<=>a[1]}.each do |key,value|
      html+= "<LI><input type='checkbox' name='xray' value='#{key}' /> #{key}</LI>\n"
    end
    html+="</OL>\n"
  end
  
  def htmlformitems
    html = ""
    
    if @xray.size > 0
      html += "<H3>xray:</H3>"
      html += create_form_for_tags(@xray) || ""
    end

    if @ct.size > 0
      html += "<H3>ct:</H3>"
      html += create_form_for_tags(@ct) || ""
    end

    if @mri.size > 0
      html += "<H3>mri:</H3>"
      html += create_form_for_tags(@mri) || ""
    end
    
    html
  end  
end