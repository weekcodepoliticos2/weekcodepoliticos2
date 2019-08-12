# -*- encoding: utf-8 -*-
# stub: elo 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "elo".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Iain Hecker".freeze]
  s.date = "2010-03-18"
  s.description = "The Elo rating system is a method for calculating the relative skill levels of players in two-player games such as cess and Go.".freeze
  s.email = "iain@iain.nl".freeze
  s.extra_rdoc_files = ["README.rdoc".freeze]
  s.files = ["README.rdoc".freeze]
  s.homepage = "http://github.com/iain/elo".freeze
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "The Elo rating system is a method for calculating the relative skill levels of players in two-player games such as cess and Go.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>.freeze, [">= 1.2.9"])
    else
      s.add_dependency(%q<rspec>.freeze, [">= 1.2.9"])
    end
  else
    s.add_dependency(%q<rspec>.freeze, [">= 1.2.9"])
  end
end
