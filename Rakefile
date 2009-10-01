%w[rubygems rake rake/clean hoe fileutils newgem rubigen].each { |f| require f }
require File.dirname(__FILE__) + '/lib/numerouno'

Hoe.spec 'numerouno' do
  version = Numerouno::VERSION
  developer 'Brent Snook', 'brent@fuglylogic.com'
  self.readme_file = 'README.rdoc'
  self.clean_globs |= %w[**/.DS_Store tmp *.log]
  self.rsync_args = '-av --delete --ignore-errors' # is this needed?
  self.extra_dev_deps = [
    ['newgem', ">= #{::Newgem::VERSION}"],
    ['rspec', '>= 1.2.8'],
    ['cucumber', '>= 0.3.103']
  ]
end

require 'cucumber/rake/task'
Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "features --format pretty"
end

require 'newgem/tasks'
Dir['tasks/**/*.rake'].each { |t| load t }

task :default => [:spec, :features]