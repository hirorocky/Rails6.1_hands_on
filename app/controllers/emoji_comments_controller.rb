class EmojiCommentsController < ApplicationController
  before_action :set_community
  
  def new
    @emoji = Emoji.new.build_comment
  end

  def create
    # FIXME: バリデーションエラーを無視している
    @community.comments
              .create(content: Emoji.new(emoji_type: emoji_params[:emoji_type]),
                      author_name: emoji_params[:author_name])
    redirect_to community_path(@community)
  end

  private

  def set_community
    @community = Community.find(params[:community_id])
  end

  def emoji_params
    params.require(:comment).permit(:emoji_type, :author_name)
  end
end
