import strutils, sequtils

var changes: seq[int] = toSeq(lines("input.txt"))
    .map do (s: string) -> int: parseInt(s)

var res = 0

for ch in changes:
    res += ch

echo res
