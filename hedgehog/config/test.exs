import Config

config :naive,
  binance_client: Test.BinanceMock

config :core,
  pubsub_client: Test.PubSubMock,
  logger: Test.PubSubMock
