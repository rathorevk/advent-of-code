defmodule AdventOfCode.Y2023.Day01 do
  @moduledoc """
  Day 01: Trebuchet?
  Problem Link: https://adventofcode.com/2023/day/1
  """

  import AdventOfCode.Helper, only: [fetch_input: 1]

  ##################################################################################
  # Public APIs
  ##################################################################################

  @spec part1([binary()]) :: number()
  def part1(input \\ fetch_input(_day = 1)) do
    input
    |> Enum.map(fn line ->
      extract_first_digit(line) * 10 + extract_first_digit(String.reverse(line))
    end)
    |> Enum.sum()
  end

  @spec part2([binary()]) :: number()
  def part2(input \\ fetch_input(_day = 1)) do
    input
    |> Enum.map(fn line ->
      extract_first_digit_2(line) * 10 + extract_first_digit_2(String.reverse(line))
    end)
    |> Enum.sum()
  end

  ##################################################################################
  # Private Functions
  ##################################################################################

  defp extract_first_digit(<<>>), do: <<>>
  defp extract_first_digit(<<x, _rest::binary>>) when x in ?1..?9, do: x - ?0
  defp extract_first_digit(<<_, rest::binary>>), do: extract_first_digit(rest)

  defp extract_first_digit_2(<<>>), do: <<>>
  defp extract_first_digit_2(<<"one", _rest::binary>>), do: 1
  defp extract_first_digit_2(<<"eno", _rest::binary>>), do: 1
  defp extract_first_digit_2(<<"two", _rest::binary>>), do: 2
  defp extract_first_digit_2(<<"owt", _rest::binary>>), do: 2
  defp extract_first_digit_2(<<"three", _rest::binary>>), do: 3
  defp extract_first_digit_2(<<"eerht", _rest::binary>>), do: 3
  defp extract_first_digit_2(<<"four", _rest::binary>>), do: 4
  defp extract_first_digit_2(<<"ruof", _rest::binary>>), do: 4
  defp extract_first_digit_2(<<"five", _rest::binary>>), do: 5
  defp extract_first_digit_2(<<"evif", _rest::binary>>), do: 5
  defp extract_first_digit_2(<<"six", _rest::binary>>), do: 6
  defp extract_first_digit_2(<<"xis", _rest::binary>>), do: 6
  defp extract_first_digit_2(<<"seven", _rest::binary>>), do: 7
  defp extract_first_digit_2(<<"neves", _rest::binary>>), do: 7
  defp extract_first_digit_2(<<"eight", _rest::binary>>), do: 8
  defp extract_first_digit_2(<<"thgie", _rest::binary>>), do: 8
  defp extract_first_digit_2(<<"nine", _rest::binary>>), do: 9
  defp extract_first_digit_2(<<"enin", _rest::binary>>), do: 9
  defp extract_first_digit_2(<<x, _rest::binary>>) when x in ?1..?9, do: x - ?0
  defp extract_first_digit_2(<<_, rest::binary>>), do: extract_first_digit_2(rest)
end
