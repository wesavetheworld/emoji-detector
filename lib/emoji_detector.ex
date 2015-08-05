defmodule EmojiDetector do

  for codepoint_str <- File.stream!(Path.join(__DIR__, "emoji_integer_codepoints.txt")) do
    codepoint = codepoint_str |> String.strip |> String.to_integer
    defp is_emoji?(<< unquote(codepoint) :: utf8 >>), do: true
  end

  defp is_emoji?(str), do: false

  @spec contain?(String.t) :: boolean
  def contain?(s) do
    String.codepoints(s) |> Enum.any?(&is_emoji?/1)
  end

end
