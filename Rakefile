require 'bundler'
Bundler::GemHelper.install_tasks

task :default do
  # A very simple "DONT CRASH TEST"
  require 'lolize'
  colorizer = Lolize::Colorizer.new
  colorizer.write "*****\n"*10

  10.times { puts "*"*10 }
end
