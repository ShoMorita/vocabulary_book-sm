class ContentsController < ApplicationController
  def new
    @content = Content.new
  end
end
