require 'lolcat'

module Lolize
  def self.write(s)
    @opts ||= {
      :animate => false,
      :duration => 12,
      :os => 0,
      :speed => 20,
      :spread => 8.0,
      :freq => 0.3
    }
    Lol.println(s, {}, @opts)
  end
  def self.lolize(output)
    class << output
      alias :raw_write :write
      def write(s)
        Lol.println(s)
      end
    end
  end
end

module Lol
  # def self.puts
  # end
  # def self.print
  # end
end

# Lolize.lolize($stdout)
# Lolize.lolize($stderr)

Lolize.write "aa"*1000

exit 0

