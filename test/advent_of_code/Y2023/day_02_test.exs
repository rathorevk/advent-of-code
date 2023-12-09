defmodule AdventOfCode.Y2023.Day02Test do
  use ExUnit.Case

  alias AdventOfCode.Y2023.Day02

  describe "Day02 verification" do
    test "part1" do
      assert Day02.part1() == 2348
    end

    test "part2" do
      assert Day02.part2() == 76008
    end
  end
end
