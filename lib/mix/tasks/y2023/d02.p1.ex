defmodule Mix.Tasks.Y2023.D02.P1 do
  use Mix.Task

  import AdventOfCode.Y2023.Day02

  @shortdoc "Day 02 Part 1"
  def run(args) do
    if Enum.member?(args, "-b"),
      do: Benchee.run(%{part_1: fn -> part1() end}),
      else: part1() |> IO.inspect(label: "Part 1 Results")
  end
end
