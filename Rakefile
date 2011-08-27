require 'bundler'
Bundler::GemHelper.install_tasks

task :default do
  # A very simple "DONT CRASH TEST", I just want to ensure this won't crash the program
  require 'lolize'
  colorizer = Lolize::Colorizer.new
  colorizer.write "*****\n"*5

  5.times { puts "*"*5 }
  require 'lolize/auto'
  5.times { puts "*"*5 }
end
