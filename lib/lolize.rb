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
  def self.raw_write(s)
    $stdout.raw_write(s)
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
  def self.puts(s='')
    Lolize.raw_write("#{s}\n")
  end
  def self.print(s)
    Lolize.raw_write(s)
  end
end

Lolize.lolize($stdout)
Lolize.lolize($stderr)

10.times do
  Lolize.write "a"*80
end

exit 0

