require 'spec_helper'

describe 'locomotive/memberships/new', type: :view do

  helper(Locomotive::BaseHelper, Locomotive::SitesHelper, Locomotive::Engine.routes.url_helpers)

  let(:site)        { build('test site') }
  let(:membership)  { site.memberships.first }

  before do
    view.stubs(:current_site).returns site
    assign(:membership, membership)
  end

  subject { render }

  it 'renders something without an exception' do
    expect { subject }.to_not raise_error
  end

end
