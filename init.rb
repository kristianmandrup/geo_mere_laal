require "geo_mere_laal" 
puts "Include GeoMereLaal::Helper into ActionView"
ActionView::Base.send(:include, GeoMereLaal::Helper)  # The helper beauty comes here                            
ActionView::Helpers::FormOptionsHelper.send(:include, GeoMereLaal::Helper) # The helper beauty comes here
