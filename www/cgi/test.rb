#!/usr/bin/env ruby                                                                                                                                                                                                                                    

require 'cgi'

cgi = CGI.new
puts cgi.header
puts "<html><body>Ruby (#{RUBY_DESCRIPTION}and cgi is up and running </body></html>"
