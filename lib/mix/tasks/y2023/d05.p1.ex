defmodule Mix.Tasks.Y2023.D05.P1 do
  use Mix.Task

  import AdventOfCode.Y2023.Day05

  @shortdoc "Day 05 Part 1"
  def run(args) do
    input = nil

    if Enum.member?(args, "-b"),
      do: Benchee.run(%{part_1: fn -> input |> part1() end}),
      else:
        input
        |> part1()
        |> IO.inspect(label: "Part 1 Results")
  end
end