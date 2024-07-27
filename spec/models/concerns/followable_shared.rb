shared_examples "Followable" do
  let(:thing) { create(described_class.to_s.underscore.to_sym) }
  let(:user) { create(:user) }

  before do
    user.follow(thing)
  end

  it "shows as following" do
    expect(user.following?(thing)).to be true
  end

  it "can access followers" do
    expect(thing.followers).to eq [user]
  end
end
