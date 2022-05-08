defmodule Naive do
  @moduledoc """
  Documentation for `Naive`.
  """

  alias Core.Struct.TradeEvent

  alias Naive.DynamicSymbolSupervisor

  def start_trading(symbol) do
    symbol
    |> String.upcase()
    |> DynamicSymbolSupervisor.start_worker()
  end

  def stop_trading(symbol) do
    symbol
    |> String.upcase()
    |> DynamicSymbolSupervisor.stop_workers()
  end

  def shutdown_trading(symbol) do
    symbol
    |> String.upcase()
    |> DynamicSymbolSupervisor.shutdown_worker()
  end

  def send_event(%TradeEvent{} = event) do
    GenServer.cast(:trader, event)
  end
end
