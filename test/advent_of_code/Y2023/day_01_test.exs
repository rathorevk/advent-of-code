defmodule AdventOfCode.Y2023.Day01Test do
  use ExUnit.Case

  alias AdventOfCode.Y2023.Day01

  describe "Day01 verification" do
    test "part1" do
      assert Day01.part1() == 54338
    end

    test "part2" do
      assert Day01.part2() == 53389
    end
  end
end
