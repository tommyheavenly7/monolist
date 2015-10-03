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
                    .select("items.*, max(ownerships.created_at) AS max_created_at, count(*) AS count_items_id")
                    .where('ownerships.type = ?', @context)
                    .group('items.id')
                    .order('count_items_id DESC', 'max_created_at DESC')
                    .limit(10)
  end
end
