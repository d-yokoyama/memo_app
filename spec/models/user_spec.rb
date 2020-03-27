require 'rails_helper'

RSpec.describe User, type: :model do
  it "ユーザーID,password,emailがあれば登録できる" do
    user = User.new(
      name: "田中",
      email: "tanaka.com",
      password: 1111
    )
    expect(user).to be_valid
  end

  #ユーザーIDがなければ登録できない
  it "is not be valid without name" do
    user = User.new(
      name: "",
      email: "tanaka.com",
      password: 1111
    )
    expect(user).not_to be_valid
  end

  it "passwordがなければ登録できない" do
    user = User.new(
      name: "tanaka",
      email: "tanaka.com",
      password: ""
    )
    expect(user).not_to be_valid
  end

  #emailがなければ登録できない
  it "is not be valid without email" do
    user = User.new(
      name: "tanaka",
      email: "",
      password: 1111
    )
    expect(user).not_to be_valid
  end

  #passwordが暗号化されているか
  it "passwordが暗号化されているか" do
    user = User.new(
      name: "tanaka",
      email: "tanaka.com",
      password: 1111
    )
    expect(user.password).not_to eq 1111
  end

end
