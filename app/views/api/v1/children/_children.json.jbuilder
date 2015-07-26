json.array! @children.each do |child|
  json.id child.id
  json.parent_id child.parent_id
  json.total_balance child.total_balance
  json.interest_rate child.interest_rate

  json.tasks child.child_tasks.each do |child_task|
    json.id child_task.id
    json.child_id child_task.child_id
    json.amount_earned child_task.amount_earned
    json.status child_task.status
  end

  json.user_interests child.child_user_interests.each do |child_user_interest|
    json.id child_user_interest.id
    json.child_id child_user_interest.child_id
    json.interest_rate child_user_interest.interest_rate
    json.money_invested child_user_interest.money_invested
    json.last_investment_balance child_user_interest.last_investment_balance
    json.final_balance child_user_interest.final_balance
    json.withdrawl_status child_user_interest.withdrawl_status
    json.created_at child_user_interest.created_at
    json.duration child_user_interest.duration
  end

  json.rewards child.child_rewards.each do |child_reward|
    json.id child_reward.id
    json.child_id child_reward.child_id
    json.description child_reward.description
    json.image_url child_reward.image_url
    json.amount_cost child_reward.amount_cost
    json.status child_reward.status
  end
end
