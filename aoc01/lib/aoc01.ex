defmodule Aoc01 do
  @moduledoc """
  Documentation for Aoc01.
  """

  @spec compute_total() :: non_neg_integer()
  def compute_total do
    read_masses()
    |> Enum.map(&fuel_required/1)
    |> Enum.sum()
  end

  @spec read_masses() :: [integer()]
  def read_masses() do
    :code.priv_dir(:aoc01)
    |> Path.join("input.txt")
    |> File.read!()
    |> String.trim()
    |> String.split("\n")
    |> Enum.map(&String.to_integer/1)
  end

  @spec fuel_required(pos_integer()) :: pos_integer()
  def fuel_required(mass) when is_integer(mass) do
    Integer.floor_div(mass, 3) - 2
  end

end
