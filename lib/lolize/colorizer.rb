require 'paint'
require 'singleton'

module Lolize
  class Colorizer
    include Singleton

    def self.lolize(output)
      class << output
        alias :raw_write :write
        def write(s)
          ::Lolize::Colorizer.instance.write(s)
        end
      end
    end

    def initialize
      @freq = 0.3
      @i = 0

      @state = :normal
    end

    def rainbow
      red = Math.sin(@freq*@i + 0) * 127 + 128
      green = Math.sin(@freq*@i + 2*Math::PI/3) * 127 + 128
      blue  = Math.sin(@freq*@i + 4*Math::PI/3) * 127 + 128
      @i += 1
      "#%02X%02X%02X" % [ red, green, blue ]
    end

    def write(s)
      s.each_char do |c|
        case @state
        when :normal
          if c=="\e"
            @state = :ansi
          else
            $stdout.raw_write Paint[c, rainbow]
          end
        when :ansi
          @state = :normal if c=='m'
        end
      end
    end
  end
end
