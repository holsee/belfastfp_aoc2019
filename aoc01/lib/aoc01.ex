defmodule Aoc01 do
  @moduledoc """
  Documentation for Aoc01.
  """

  @type mass :: non_neg_integer()
  @type fuel :: non_neg_integer()

  @spec compute_total() :: fuel()
  def compute_total do
    read_masses()
    |> Enum.map(&fuel_required/1)
    |> Enum.sum()
  end

  @spec read_masses() :: [mass()]
  def read_masses() do
    :code.priv_dir(:aoc01)
    |> Path.join("input.txt")
    |> File.read!()
    |> String.trim()
    |> String.split("\n")
    |> Enum.map(&String.to_integer/1)
  end

  @spec fuel_required(mass()) :: fuel()
  def fuel_required(mass) when is_integer(mass) do
    do_fuel_required(mass)
  end

  @spec do_fuel_required(mass()) :: fuel()
  defp do_fuel_required(mass)

  defp do_fuel_required(mass) when mass > 6 do
    fuel_needed = Integer.floor_div(mass, 3) - 2
    fuel_needed + do_fuel_required(fuel_needed)
  end

  defp do_fuel_required(_mass) do
    0
  end
end
