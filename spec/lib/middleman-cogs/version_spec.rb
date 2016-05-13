RSpec.describe Middleman::Cogs::VERSION do
  it "has a version" do
    expect( Middleman::Cogs::VERSION >= '0.0.0' ).to eq true
  end

  it "has a ::version method" do
    expect( Middleman::Cogs.version >= '0.0.0' ).to eq true
  end
end
