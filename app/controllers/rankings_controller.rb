class RankingsController < ApplicationController
  before_action :set_items

  def have
  end

  def want
  end

  private

  def set_context
    @context ||= params[:context].capitalize
  end

  def set_items
    set_context
    @rank_in_items = Item.joins('LEFT JOIN ownerships ON items.id=ownerships.item_id')
                    .select("items.*, count(*) AS count_items_id")
                    .where('ownerships.type = ?', @context)
                    .group('ownerships.item_id')
                    .order('count_items_id DESC', 'ownerships.created_at DESC')
                    .limit(10)
  end
end
