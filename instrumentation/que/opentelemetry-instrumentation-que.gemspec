# frozen_string_literal: true

# Copyright The OpenTelemetry Authors
#
# SPDX-License-Identifier: Apache-2.0

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'opentelemetry/instrumentation/que/version'

Gem::Specification.new do |spec|
  spec.name        = 'opentelemetry-instrumentation-que'
  spec.version     = OpenTelemetry::Instrumentation::Que::VERSION
  spec.authors     = ['OpenTelemetry Authors']
  spec.email       = ['cncf-opentelemetry-contributors@lists.cncf.io']

  spec.summary     = 'Que instrumentation for the OpenTelemetry framework'
  spec.description = 'Que instrumentation for the OpenTelemetry framework'
  spec.homepage    = 'https://github.com/open-telemetry/opentelemetry-contrib'
  spec.license     = 'Apache-2.0'

  spec.files = ::Dir.glob('lib/**/*.rb') +
               ::Dir.glob('*.md') +
               ['LICENSE', '.yardopts']
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.6.0'

  spec.add_dependency 'opentelemetry-api', '~> 1.0'
  spec.add_dependency 'opentelemetry-instrumentation-base', '~> 0.21.0'

  spec.add_development_dependency 'activerecord', '~> 6.0'
  spec.add_development_dependency 'appraisal', '~> 2.2.0'
  spec.add_development_dependency 'bundler', '>= 1.17'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'opentelemetry-instrumentation-pg', '~> 0.20'
  spec.add_development_dependency 'opentelemetry-sdk', '~> 1.1'
  spec.add_development_dependency 'opentelemetry-test-helpers'
  spec.add_development_dependency 'pg', '~> 1.1'
  spec.add_development_dependency 'que', '~> 1.0.0.beta4'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rubocop', '~> 0.73.0'
  spec.add_development_dependency 'simplecov', '~> 0.17.1'
  spec.add_development_dependency 'yard', '~> 0.9'
  spec.add_development_dependency 'yard-doctest', '~> 0.1.6'

  if spec.respond_to?(:metadata)
    spec.metadata['changelog_uri'] = "https://open-telemetry.github.io/opentelemetry-ruby-contrib/opentelemetry-instrumentation-que/v#{OpenTelemetry::Instrumentation::Que::VERSION}/file.CHANGELOG.html"
    spec.metadata['source_code_uri'] = 'https://github.com/open-telemetry/opentelemetry-ruby-contrib/tree/main/instrumentation/que'
    spec.metadata['bug_tracker_uri'] = 'https://github.com/open-telemetry/opentelemetry-ruby-contrib/issues'
    spec.metadata['documentation_uri'] = "https://open-telemetry.github.io/opentelemetry-ruby-contrib/opentelemetry-instrumentation-que/v#{OpenTelemetry::Instrumentation::Que::VERSION}"
  end
end
