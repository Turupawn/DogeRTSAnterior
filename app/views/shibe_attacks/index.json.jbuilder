json.array!(@shibe_attacks) do |shibe_attack|
  json.extract! shibe_attack, :id, :user_attacker_id, :user_attacked_id, :units_used, :units_destroyed, :damage_dealt
  json.url shibe_attack_url(shibe_attack, format: :json)
end
