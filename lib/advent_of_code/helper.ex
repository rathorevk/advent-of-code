defmodule AdventOfCode.Helper do
  @moduledoc """
  This module contains Helper functions.
  """

  def fetch_input(day \\ 1) do
    day
    |> AdventOfCode.Input.get!()
    |> String.split("\n", trim: true)
  end
end
