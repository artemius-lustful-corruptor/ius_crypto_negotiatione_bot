defmodule Naive do
  @moduledoc """
  Documentation for `Naive`.
  """

  alias Streamer.Binance.TradeEvent

  alias Naive.DynamicSymbolSupervisor

  defdelegate start_trading(symbol), to: DynamicSymbolSupervisor
  defdelegate stop_trading(symbol), to: DynamicSymbolSupervisor 
  defdelegate shutdown_trading(symbol), to: DynamicSymbolSupervisor
  
  def send_event(%TradeEvent{} = event) do
    GenServer.cast(:trader, event)
  end
end
