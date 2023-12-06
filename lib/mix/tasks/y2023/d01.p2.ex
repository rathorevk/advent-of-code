defmodule Mix.Tasks.Y2023.D01.P2 do
  use Mix.Task

  import AdventOfCode.Y2023.Day01

  @shortdoc "Day 01 Part 2"
  def run(args) do
    if Enum.member?(args, "-b"),
      do: Benchee.run(%{part_2: fn -> part2() end}),
      else: part2() |> IO.inspect(label: "Part 2 Results")
  end
end
