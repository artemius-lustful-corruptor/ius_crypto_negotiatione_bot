import Config

config :naive,
  binance_client: Binance

config :streamer,
  binance_client: Binance

config :binance_mock,
  use_cached_exchange_info: false
