$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'jekyll'
require 'jekyll-angular'

FIXTURES_DIR = File.expand_path('../fixture_site', __FILE__)
def fixtures_dir(*paths)
  File.join(FIXTURES_DIR, *paths)
end
