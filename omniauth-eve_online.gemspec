# frozen_string_literal: true

require_relative './lib/omniauth/eve_online/version'

Gem::Specification.new do |spec|
  spec.name = 'omniauth-eve_online'
  spec.version = OmniAuth::EVEOnline::VERSION
  spec.authors = 'Bokobo Shahni'
  spec.email = 'shahni@bokobo.space'

  spec.summary = 'EVE Online OAuth2 strategy for OmniAuth 2.x'
  spec.description = 'omniauth-eve_online is an EVE Online OAuth2 strategy for OmniAuth 2.x.'
  spec.homepage = 'https://bokoboshahni.github.io/omniauth-eve_online'
  spec.license = 'MIT'

  spec.required_ruby_version = '~> 3.1'
  spec.required_rubygems_version = '>= 3.3.0'

  spec.metadata = {
    'homepage_uri' => spec.homepage,
    'bug_tracker_uri' => 'https://github.com/bokoboshahni/omniauth-eve_online/issues',
    'changelog_uri' => 'https://github.com/bokoboshahni/omniauth-eve_online/blob/main/CHANGELOG.md',
    'documentation_uri' => "https://bokoboshahni.github.io/omniauth-eve_online/v#{OmniAuth::EVEOnline::VERSION}",
    'mailing_list_uri' => 'https://github.com/bokoboshahni/omniauth-eve_online/discussions',
    'source_code_uri' => 'https://github.com/bokoboshahni/omniauth-eve_online',

    'rubygems_mfa_required' => 'true'
  }

  spec.add_dependency 'jwt', '~> 2.5'
  spec.add_dependency 'omniauth', '~> 2.1'
  spec.add_dependency 'omniauth-oauth2', '~> 1.8'

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|spec)/|\.(?:git|github))})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
