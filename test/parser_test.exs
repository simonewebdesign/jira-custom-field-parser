defmodule ParserTest do
  use ExUnit.Case
  doctest Parser

  @str "1_*:*_1_*:*_17036_*|*_3_*:*_1_*:*_5495_*|*_4_*:*_1_*:*_104123046_*|*_5_*:*_1_*:*_0_*|*_10100_*:*_1_*:*_68122300_*|*_10600_*:*_1_*:*_167075863_*|*_10995_*:*_1_*:*_13349942_*|*_10500_*:*_1_*:*_1386191"

  test "it parses" do
    assert Parser.parse(@str) == """
1: 17036
3: 5495
4: 104123046
5: 0
10100: 68122300
10600: 167075863
10995: 13349942
10500: 1386191
"""
  end
end
