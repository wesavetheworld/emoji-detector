defmodule EmojiDetectorTest do
  use ExUnit.Case

  test "empty string" do
    assert !EmojiDetector.contain?("")
  end

  test "a" do
    assert !EmojiDetector.contain?("a")
  end

  test "emoji haha" do
    assert EmojiDetector.contain?("😀")
  end

  test "mix" do
    assert EmojiDetector.contain?("a😀1")
  end

end
