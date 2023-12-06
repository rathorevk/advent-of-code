defmodule Mix.Tasks.Y2023.D01.P1 do
  use Mix.Task

  import AdventOfCode.Y2023.Day01

  @shortdoc "Day 01 Part 1"
  def run(args) do
    if Enum.member?(args, "-b"),
      do: Benchee.run(%{part_1: fn -> part1() end}),
      else: part1() |> IO.inspect(label: "Part 1 Results")
  end
end
