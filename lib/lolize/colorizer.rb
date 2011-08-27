require 'paint'

module Lolize
  class Colorizer

    RAW_WRITE_METHOD = :write_without_lolize

    def self.instance
      @instance ||= Lolize::Colorizer.new
    end

    def initialize
      @freq = 0.3
      @spread = 8.0
      @line_color = 0
      @color = 0

      @state = :normal
    end

    # The algorithm is from lolcat (https://github.com/busyloop/lolcat)
    # lolcat is released with WTFPL
    def rainbow
      red = Math.sin(@freq*@color + 0) * 127 + 128
      green = Math.sin(@freq*@color + 2*Math::PI/3) * 127 + 128
      blue  = Math.sin(@freq*@color + 4*Math::PI/3) * 127 + 128
      @color += 1/@spread
      "#%02X%02X%02X" % [ red, green, blue ]
    end

    def write(s)
      s.each_char do |c|
        case @state
        when :normal
          if c=="\e"
            @state = :ansi
          elsif c=="\n"
            @line_color += 1
            @color = @line_color
            raw_write(c)
          else
            raw_write(Paint[c, rainbow])
          end
        when :ansi
          @state = :normal if c=='m'
        end
      end
    end

    def raw_write(s)
      if $stdout.respond_to?(RAW_WRITE_METHOD)
        # if $stdout is hook
        $stdout.send(RAW_WRITE_METHOD, s)
      else
        # $stdout is not hooked
        $stdout.write(s)
      end
    end
  end
end
