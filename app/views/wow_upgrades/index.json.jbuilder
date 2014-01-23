json.array!(@wow_upgrades) do |wow_upgrade|
  json.extract! wow_upgrade, :id, :building_id, :type
  json.url wow_upgrade_url(wow_upgrade, format: :json)
end
