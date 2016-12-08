$:.push File.expand_path("../lib", __FILE__)
require 'puppet-lint/version'

Gem::Specification.new do |s|
  s.name = 'puppet-lint'
  s.version = PuppetLint::VERSION
  s.homepage = 'https://github.com/halyard/puppet-lint/'
  s.summary = 'Ensure your Puppet manifests conform with the Puppetlabs style guide'
  s.description = 'Checks your Puppet manifests against the Puppetlabs
  style guide and alerts you to any discrepancies.'

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'rake', '~> 12.0.0'
  s.add_development_dependency 'rspec', '~> 3.5.0'
  s.add_development_dependency 'rspec-its', '~> 1.0'
  s.add_development_dependency 'rspec-collection_matchers', '~> 1.0'

  s.authors = ['Tim Sharpe']
  s.email = 'tim@sharpe.id.au'
end
