require 'lolize/version'
require 'lolize/colorizer'

Lolize::Colorizer.lolize($stdout)
Lolize::Colorizer.lolize($stderr)

# 100.times { puts "A"*100 }
# puts "a"
