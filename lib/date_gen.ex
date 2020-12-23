defmodule DateGen do

  def date_range(end_year, begin_year) do
    Enum.map(1..10, fn i -> generate_date(end_year, begin_year) end)
  end

  #
  def leap_year(year) do
    case :calendar.is_leap_year(year) do
        true -> 1
        false -> 0
    end
  end

  #
  def generate_date(begin_year, end_year) do
    month = Enum.random(1..12)
    year = Enum.random(begin_year..end_year)
    "#{year}-#{month}-#{deal_day(month, year)}"
  end

  #
  defp deal_day(month, year) do
    cond do
        month == 2 -> Enum.random(1..(28 + leap_year(year)))
        month in [4, 6, 9, 11] -> Enum.random(1..30)
        month in [1, 3, 5, 7, 8, 10, 12] -> Enum.random(1..31)
        month not in Enum.map(1..12, & &1) -> 1
    end
  end
end
