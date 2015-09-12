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
    expect(fixture('_site/index.html')).to eq("{{foo}}\n")
  end

  it 'works with ng-model' do
    expect(fixture('_site/ng-model-test.html')).to eq("<input type=\"text\" name=\"location\" id=\"locator\" placeholder=\"San Francisco, CA\" ng-model=\"nglocation\" />\n\n<span>{{nglocation}}</span>\n")
  end
end
