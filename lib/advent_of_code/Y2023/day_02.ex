defmodule AdventOfCode.Y2023.Day02 do
  @moduledoc """
  --- Day 2: Cube Conundrum ---
  Problem Link: https://adventofcode.com/2023/day/1
  """

  import AdventOfCode.Helper, only: [fetch_input: 1]

  @mapping %{"red" => 0, "green" => 0, "blue" => 0}

  ##################################################################################
  # Public APIs
  ##################################################################################

  @spec part1(any()) :: any()
  def part1(input \\ fetch_input(_day = 2)) do
    Enum.reduce(input, 0, fn line, acc ->
      {game_id, game_subsets} = extract_game_info(line)

      game_subsets
      |> max_number_of_cubes(@mapping)
      |> is_game_possible?()
      |> case do
        true -> acc + String.to_integer(game_id)
        false -> acc
      end
    end)
  end

  @spec part2(any()) :: any()
  def part2(input \\ fetch_input(_day = 2)) do
    Enum.reduce(input, 0, fn line, acc ->
      {_game_id, game_subsets} = extract_game_info(line)

      game_subsets
      |> max_number_of_cubes(@mapping)
      |> calculate_power(acc)
    end)
  end

  ##################################################################################
  # Private Functions
  ##################################################################################

  defp max_number_of_cubes([], mapping), do: mapping

  defp max_number_of_cubes([[num_cubes, color] | rest], mapping) do
    max_cubes = max(mapping[color], String.to_integer(num_cubes))
    max_number_of_cubes(rest, %{mapping | color => max_cubes})
  end

  defp is_game_possible?(max_cubes),
    do: max_cubes["red"] <= 12 && max_cubes["green"] <= 13 && max_cubes["blue"] <= 14

  defp calculate_power(max_cubes, total_power),
    do: total_power + max_cubes["red"] * max_cubes["green"] * max_cubes["blue"]

  defp extract_game_info(line) do
    [<<"Game ", game_id::binary>>, subsets] = String.split(line, ":")

    {game_id,
     subsets
     |> String.split(";")
     |> Enum.flat_map(fn x -> String.split(x, [" ", ","], trim: true) end)
     |> Enum.chunk_every(2)}
  end
end
