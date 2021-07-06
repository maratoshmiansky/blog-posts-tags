class TagsController < ApplicationController
  def index
    tags = Tag.all
    render json: tags
  end

  def show
    tag = Tag.find(params[:id])
    render json: tag
  end

  def create
    tag = Tag.new(
      name: params[:name],
    )
    if tag.save
      render json: tag
    else
      render json: { errors: tag.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    tag = Tag.find(params[:id])
    tag.title = params[:name] || tag.name
    if tag.save
      render json: tag
    else
      render json: { errors: tag.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    tag = Tag.find(params[:id])
    tag.destroy
    render json: { message: "Tag deleted!" }
  end
end
