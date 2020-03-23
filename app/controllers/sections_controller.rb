class SectionsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def new
    @section = current_user.sections.build
  end

  def index
    @sections = Section.all.order("created_at DESC")
  end

  def edit
  end
end
