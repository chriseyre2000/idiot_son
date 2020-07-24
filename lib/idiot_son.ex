defmodule IdiotSon do
  @moduledoc """
  Documentation for `IdiotSon`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> IdiotSon.latest()
      :world

  """
  def latest( count \\ 20 ) do
    {:ok, %{"statuses" => data }} = Twittex.Client.search("from:archer_rs", %{count: count, tweet_mode: "extended" })
    
    data
    |> Enum.reverse() 
    |> Enum.map( fn item -> "\n" <> Map.get(item, "created_at") <>  ":\n"  <>  Map.get(item, "full_text") end )
    |> Enum.map(&IO.puts/1)

  end
end
