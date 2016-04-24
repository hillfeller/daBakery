class Item < ActiveRecord::Base
  belongs_to :store

  def bread
    "http://open.imagebank.lantmannen.com/Lantmannen%20Unibake/Benelux/12474000_2.jpg"
  end



  def cart_action(current_user_id)
    if $redis.sismember "cart#{current_user_id}", id
      "Remove from"
    else
      "Add to"
    end
  end
end
