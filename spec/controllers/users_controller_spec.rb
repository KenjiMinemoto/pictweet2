require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
  describe 'Get #show' do
  context '要求されたユーザーが存在しない場合' do
      it 'リクエストはRecordNotFoundとなること' do
        expect{
          get 'show', permalink: 'hogehoge'
        }.to raise_exception(ActiveRecord::RecordNotFound)
      end
    end
  end
end
