defmodule Aoc01Test do
  use ExUnit.Case
  doctest Aoc01

  describe "fuel_required/1" do
    @examples [
      {12, 2},
      {14, 2},
      {1969, 966},
      {100_756, 50346}
    ]

    test "should return fuel for mass" do
      for {mass, expected_fuel} <- @examples do
        assert expected_fuel == Aoc01.fuel_required(mass), "Input: #{mass}"
      end
    end
  end

  describe "read_masses" do
    test "should return list of masses from input.txt" do
      assert [141_657 | _] = Aoc01.read_masses()
    end
  end

  describe "compute_total" do
    test "should return total fuel required for massed in input.txt" do
      assert is_integer(Aoc01.compute_total())
    end
  end
end
