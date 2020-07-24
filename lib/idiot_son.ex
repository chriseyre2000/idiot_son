defmodule IdiotSon do
  @moduledoc """
  Documentation for `IdiotSon`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> IdiotSon.hello()
      :world

  """
  def latest( count \\ 20 ) do
    {:ok, %{"statuses" => data }} = Twittex.Client.search("from:archer_rs", %{count: count, tweet_mode: "extended" })
    data
    |> Enum.reverse() 
    |> Enum.map( fn item -> item |> Map.get("full_text") end )
  end
end
