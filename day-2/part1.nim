import strutils, sequtils

var
  x2, x3: int = 0

for ln in lines("input.txt"):
  for c in (0..<len(ln)):
    var n = ln.count(ln[c])
    if n == 2:
      x2 += 1
      break
  for c in (0..<len(ln)):
    var n = ln.count(ln[c])
    if n == 3:
      x3 += 1
      break

echo x2 * x3
