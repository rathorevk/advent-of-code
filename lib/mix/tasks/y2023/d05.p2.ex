defmodule Mix.Tasks.Y2023.D05.P2 do
  use Mix.Task

  import AdventOfCode.Y2023.Day05

  @shortdoc "Day 05 Part 2"
  def run(args) do
    input = nil

    if Enum.member?(args, "-b"),
      do: Benchee.run(%{part_2: fn -> input |> part2() end}),
      else:
        input
        |> part2()
        |> IO.inspect(label: "Part 2 Results")
  end
end
