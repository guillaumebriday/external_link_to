# frozen_string_literal: true

RSpec.describe ExternalLinkTo, type: :helper do
  include ExternalLinkTo

  it 'has a version number' do
    expect(ExternalLinkTo::VERSION).not_to be(nil)
  end

  it 'does render external_link' do
    expect(external_link_to('Home', '/home')).to eq('<a rel="noopener noreferrer" target="_blank" href="/home">Home</a>')
    expect(external_link_to('Home', '/home', class: 'bg-white')).to eq('<a class="bg-white" rel="noopener noreferrer" target="_blank" href="/home">Home</a>')
    expect(external_link_to('Home', '/home', rel: 'noopener')).to eq('<a rel="noopener" target="_blank" href="/home">Home</a>')
  end
end
