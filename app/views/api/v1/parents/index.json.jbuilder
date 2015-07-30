json.array! @parents.each do |parent|
  json.id parent.id
  json.children parent.children
  json.childrens_incomplete_tasks parent.childrens_incomplete_tasks
  json.tasks_needing_approval parent.tasks_needing_approval

  json.all_tasks parent.tasks.each do |task|
    json.id task.id
    json.user_id task.user_id
    json.child_id task.child_id
    json.to_do task.to_do
    json.amount_earned task.amount_earned
    json.status task.status
  end

  json.rewards_needing_approval parent.rewards_needing_approval

  json.all_rewards parent.rewards.each do |reward|
    json.id reward.id
    json.user_id reward.user_id
    json.child_id reward.child_id
    json.child_id reward.child_id
    json.description reward.description
    json.image_url reward.image_url
    json.amount_cost reward.amount_cost
    json.status reward.status
  end
end
