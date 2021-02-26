defmodule Caesar do
  @moduledoc """
  Caesar cipher. Tested only with English text (Latin alphabet).
  """

  @alpha ~w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]
  @alpha_count Enum.count(@alpha)
  @alpha_to_num Enum.with_index(@alpha) |> Enum.map(fn {c, i} -> {c, i} end) |> Enum.into(%{})

  @doc """
  Shifts given text by key (key can be one or more integers)
  """
  def cipher(text, count) when is_binary(text) and is_integer(count) do
    cipher(text, [count])
  end

  def cipher(text, counts) when is_binary(text) and is_list(counts) do
    shifts = Stream.cycle(counts) |> Enum.take(byte_size(text))

    letters =
      text
      |> String.upcase()
      |> String.split("", trim: true)

    letters
    |> do_cipher(shifts, [])
    |> Enum.reverse()
    |> Enum.join("")
  end

  @doc """
  Returns all possible single-key-length decipherings with the key that was
  used (sneaky dad!)
  """
  def cipherings(text) do
    for i <- 1..@alpha_count do
      {i, cipher(text, 0 - i)}
    end
  end

  defp do_cipher([], _shifts, acc), do: acc
  defp do_cipher(_chars, [], acc), do: acc

  defp do_cipher([c | chars_rem], [s | shifts_rem] = shifts, acc) do
    if c in @alpha do
      c_pos = Map.fetch!(@alpha_to_num, c)
      new_c = shift_in(@alpha, c_pos, s)
      do_cipher(chars_rem, shifts_rem, [new_c | acc])
    else
      do_cipher(chars_rem, shifts, [c | acc])
    end
  end

  defp shift_in(enum, pos, shift) do
    new_pos = rem(pos + shift, Enum.count(enum))
    Enum.at(enum, new_pos)
  end
end
