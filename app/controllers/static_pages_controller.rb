class StaticPagesController < ApplicationController
  def home
    @client = Pexels::Client.new

    @collection_id = params[:collection_id] if params[:collection_id].present?
  end
end
