require 'rails_helper'

RSpec.describe Guest, type: :model do
  it "guestモデルが空か確認する" do
    guest = Guest.count
    expect(guest).to be 0
  end
  it "guestログインしたら初期値を作成する"  do
    guest = Guest.new(content: "ゲストログインです")
    expect(guest.content).to eq "ゲストログインです"
  end
end
