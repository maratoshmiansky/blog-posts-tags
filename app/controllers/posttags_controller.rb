class PosttagsController < ApplicationController
  def index
    posttags = PostTag.all
    render json: posttags
  end

  def show
    posttag = PostTag.find(params[:id])
    render json: posttag
  end

  def create
    posttag = PostTag.new(
      post_id: params[:post_id],
      tag_id: params[:tag_id],
    )
    if posttag.save
      render json: posttag
    else
      render json: { errors: posttag.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    posttag = PostTag.find(params[:id])
    posttag.post_id = params[:post_id] || posttag.post_id
    posttag.tag_id = params[:tag_id] || posttag.tag_id
    if posttag.save
      render json: posttag
    else
      render json: { errors: posttag.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    posttag = PostTag.find(params[:id])
    posttag.destroy
    render json: { message: "PostTag deleted!" }
  end
end
