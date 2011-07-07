#!/usr/bin/env ruby                                                                                                                                                                                                                                    

require 'cgi'

cgi = CGI.new
puts cgi.header
puts "<html><body>Ruby and cgi is up and running test</body></html>"
