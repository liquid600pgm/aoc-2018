import strutils, sequtils

var
  ids: seq[string] = toSeq(lines("input.txt"))

proc diff(a: string, b: string): (bool, string) =
  var
    res: string = a
    diffs, at: int = 0
  for i in (0..<len(a)):
    if a[i] != b[i]:
      diffs += 1
      at = i
    if diffs > 1:
      return (false, "")
  res = res[0..at - 1] & res[at + 1..<len(res)]
  return (true, res)

for a in ids:
  for b in ids:
    if a != b:
      var (ok, diff) = diff(a, b)
      if ok:
        echo diff
