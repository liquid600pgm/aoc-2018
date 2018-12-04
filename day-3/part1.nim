import strscans

var fabric: array[1000, array[1000, int]]

for ln in lines("input.txt"):
  var id, x, y, w, h: int
  if scanf(ln, "#$i @ $i,$i: $ix$i", id, x, y, w, h):
    for i in x..<x + w:
      for j in y..<y + h:
        fabric[i][j] += 1

var inch2 = 0

for y in fabric:
  for x in y:
    if x > 1: inch2 += 1

echo inch2