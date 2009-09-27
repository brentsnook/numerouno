%w[rubygems rake rake/clean hoe fileutils newgem rubigen].each { |f| require f }
require File.dirname(__FILE__) + '/lib/numerouno'

Hoe.spec 'numerouno' do
  
  version = Numerouno::VERSION
  
  developer 'Brent Snook', 'brent@fuglylogic.com'
  summary = %q{English natural language parser for numbers.}
  changes = paragraphs_of("History.txt", 0..1).join("\n\n")
  rubyforge_name = name
  extra_dev_deps = [
    ['newgem', ">= #{::Newgem::VERSION}"],
    ['rspec', '>= 1.2.8'],
    ['cucumber', '>= 0.3.103']
  ]
  
  clean_globs |= %w[**/.DS_Store tmp *.log]
  path = (rubyforge_name == name) ? rubyforge_name : "\#{rubyforge_name}/\#{name}"
  remote_rdoc_dir = File.join(path.gsub(/^#{rubyforge_name}\/?/,''), 'rdoc')
  rsync_args = '-av --delete --ignore-errors'
end

require 'cucumber/rake/task'
Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "features --format pretty"
end

require 'newgem/tasks'
Dir['tasks/**/*.rake'].each { |t| load t }

task :default => [:spec, :features]