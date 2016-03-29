json.array!(@speedtests) do |speedtest|
  json.extract! speedtest, :id, :ssid, :ping, :upload, :download
  json.url speedtest_url(speedtest, format: :json)
end
