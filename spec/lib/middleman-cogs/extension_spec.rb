RSpec.describe Middleman::Cogs::Extension do

  it "is registered as an extension" do
    expect( Middleman::Extensions.registered[:cogs] ).to eq Middleman::Cogs::Extension
  end

end
