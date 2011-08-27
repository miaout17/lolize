module Lolize
  module Hooker
    def lolize(output)
      class << output
        alias :raw_write :write
        def write(s)
          ::Lolize::Colorizer.instance.write(s)
        end
      end
    end
  end
end
