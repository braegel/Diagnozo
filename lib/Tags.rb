class Tags
  attr_accessor :anamnesis,:pe,:region,:xray,:ct,:mri
  
  def initialize
    @anamnesis=Hash.new(0)
    @pe=Hash.new(0)
    @region=Hash.new(0)
    @xray=Hash.new(0)
    @ct=Hash.new(0)
    @mri=Hash.new(0)
  end
  
  def print

    if @anamnesis.size>0
      puts "anamnesis:"
      @anamnesis.sort {|a,b| b[1]<=>a[1]}.each do |key,value|
        puts "\t#{key}"
      end
      puts
    end
    if @pe.size>0
      puts "pe:"
      @pe.sort {|a,b| b[1]<=>a[1]}.each do |key,value|
        puts "\t#{key}"
      end
      puts
    end

    if @region.size>0
      puts "region:"
      @region.sort {|a,b| b[1]<=>a[1]}.each do |key,value|
        puts "\t#{key}"
      end
      puts
    end

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
    if @anamnesis.size > 0
      html += "<H3>anamnesis:</H3>"
      html += create_form_for_tags(@anamnesis) || ""
    end

    if @pe.size > 0
      html += "<H3>pe:</H3>"
      html += create_form_for_tags(@pe) || ""
    end

    if @region.size > 0
      html += "<H3>region:</H3>"
      html += create_form_for_tags(@region) || ""
    end
    
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