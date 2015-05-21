require 'spec_helper'

describe Jekyll::Angular do
  let(:config_overrides) { {} }
  let(:configs) do
    Jekyll.configuration(config_overrides.merge({
      'skip_config_files' => true,
      'collections' => { 'docs' => { 'output' => true }, 'secret' => {} },
      'source' => fixtures_dir,
      'destination' => fixtures_dir('_site'),
      'gems' => ['jekyll-angular']
    }))
  end

  let(:site) { Jekyll::Site.new(configs) }

  before(:each) do
    @site = site.process
  end

  it 'generates a site' do
    expect(File.read(fixtures_dir('_site/index.html'))).to eq('{{foo}}')
  end
end
