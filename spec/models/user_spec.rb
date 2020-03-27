require 'rails_helper'

RSpec.describe User, type: :model do

  it "ユーザーID,password,emailがあれば登録できる"

  it "ユーザーIDがなければ登録できない"

  it "passwordがなければ登録できない"

  it "emailがなければ登録できない"

  it "ユーザーIDが重複してたら登録できない"

  it "emailが重複してたら登録できない"

  it "passwordが暗号化されているか"

end
