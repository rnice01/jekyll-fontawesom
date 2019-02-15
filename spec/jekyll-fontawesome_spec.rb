require 'spec_helper'

RSpec.describe Jekyll::Fontawesome do
  let(:overrides) do
    {
      "source": source_dir,
      "destination": dest_dir
    }
  end

  let(:config) do
    Jekyll.configuration(overrides)
  end

  let(:site) { Jekyll::Site.new(config) }
  let(:contents) { File.read(dest_dir('jekyll-fontawesome.js')) }

  before(:each) do
    site.process
  end

  it 'has a version number' do
    expect(Jekyll::Fontawesome::VERSION).not_to be nil
  end

  it 'creates a fontawesome.js file' do
    expect(File.exist?(dest_dir('jekyll-fontawesome.js'))).to be_truthy
  end
end
