# Rakefile

require 'opal'
require 'opal-browser'


task :default => :build

desc 'Build our app to build.js'
task :build do
  Opal.append_path 'app'

  builder = Opal::Builder.new
  builder.build('opal')
  builder.build('opal-browser')
  builder.build('clock')
  File.binwrite 'clock.js', builder.to_s
end
