class StaticPagesController < ApplicationController
  def home
    @client = Pexels::Client.new

    @collection_id = params[:collection_id] if params[:collection_id].present?

    unless @collection_id.nil?
      @searched_collection = false
      @client.collections.all.each do |collection|
        break @searched_collection = true if collection.id == @collection_id
      end
    end
  end
end
