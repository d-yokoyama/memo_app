require 'rails_helper'

RSpec.describe Guest, type: :model do
  it "guestログインしたら初期値を作成する"  do
    guest = Guest.new(content: "ゲストログインです")
    expect(guest.content).to eq "ゲストログインです"
  end
end
