json.array!(@much_withdraws) do |much_withdraw|
  json.extract! much_withdraw, :id, :building_id, :timestamp, :amount
  json.url much_withdraw_url(much_withdraw, format: :json)
end
