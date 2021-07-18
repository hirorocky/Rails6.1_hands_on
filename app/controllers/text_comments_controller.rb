class TextCommentsController < ApplicationController
  before_action :set_community
  
  def new
    @text = Text.new.build_comment
  end

  def create
    # FIXME: バリデーションエラーを無視している
    @community.comments
              .create(content: Text.new(text_content: text_params[:text_content]),
                      author_name: text_params[:author_name])
    redirect_to community_path(@community)
  end

  private

  def set_community
    @community = Community.find(params[:community_id])
  end

  def text_params
    params.require(:comment).permit(:text_content, :author_name)
  end
end
