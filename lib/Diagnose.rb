class Diagnose
  attr_reader :name
  attr_accessor :url,:region,:xray,:mri,:dd
  
  def initialize(name)
    @name=name
    @url=Array.new
    @region=Array.new
    @xray=Array.new
    @mri=Array.new
    @dd=Array.new    
  end
end