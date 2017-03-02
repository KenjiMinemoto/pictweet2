class RelationshipsController < ApplicationController

  def follow
    if  current_user.following?(params[:following_id])
      p "---------destroy---------"
       destroy
    else
      p "---------create---------"
       create
    end

  end

  private

  def create
    user_id = params[:following_id]
    p "-------user_id---------"
    p user_id
    p "-------user_id---------"
      if Relationship.create(following_id: current_user.id, follower_id: user_id)
        redirect_to user_path(id: user_id, notice: "フォロー完了")
      else
        redirect_to tweets_url, notice: "フォローできません"
      end
  end

  def destroy
    user_id = params[:following_id]
   if Relationship.find_by(following_id: current_user.id, follower_id: user_id).destroy
    redirect_to user_path(id: user_id, notice:"フォロー解除しました")
   end
  end
end
