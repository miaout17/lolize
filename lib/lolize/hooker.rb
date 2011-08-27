module Lolize
  module Hooker
    def lolize!(output)
      class << output
        alias_method (::Lolize::Colorizer::RAW_WRITE_METHOD), :write
        def write(s)
          ::Lolize::Colorizer.instance.write(s)
        end
      end
    end
  end
end
