require 'rails_helper'

RSpec.describe TweetsController, :type => :controller do
  describe '#index'
    let(:request) { get :index }
    it 'ステータスコード200を返し、indexをrenderする' do
      request
      response.status.should == 200
      response.should render_template('index')
    end

    it '登録されたuserを返す' do
      request
      assigns(:users).should == @user
    end
end
