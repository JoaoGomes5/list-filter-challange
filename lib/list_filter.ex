defmodule ListFilter do
  def call(list), do: impar(list);

  defp check_number(list) do
    list
    |> Enum.flat_map(fn elem ->
      case Integer.parse(elem) do
        # transform to integer
        {int, _rest} -> [int]
        # skip the value
        :error -> []
      end
    end)

  end

  defp check_impar(list) do
    list
    |> Enum.filter(fn x -> if (x == 1 || rem(x, 2) == 1) do x end  end)

  end

  defp impar(list) do
    list
    |> check_number()
    |> check_impar()
  end

end
