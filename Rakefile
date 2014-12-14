# ex: syntax=ruby ts=2 ts=2 si et
require 'puppet-lint/tasks/puppet-lint'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new :spec do |t|
  t.pattern = 'spec/*/*_spec.rb'
end

Rake::Task[:lint].clear
PuppetLint::RakeTask.new :lint do |config|
  config.fail_on_warnings
  config.ignore_paths = [ 'pkg/**/*', 'spec/**/*' ]
  config.disable_checks = [
    '80chars',
    'class_parameter_defaults',
    'documentation',
    'autoloader_layout'
  ]
end

task :default => [ :spec, :lint ]