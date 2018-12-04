import strscans

type
  Claim = object of RootObj
    id: int
    x, y, w, h: int
    intersects: bool

var claims: seq[Claim]

for ln in lines("input.txt"):
  var id, x, y, w, h: int
  if scanf(ln, "#$i @ $i,$i: $ix$i", id, x, y, w, h):
    claims.add Claim(
      id: id, x: x, y: y, w: w, h: h
    )

proc intersect(a: Claim, b: Claim): bool =
  return a.x < b.x + b.w and
         a.x + a.w > b.x and
         a.y < b.y + b.h and
         a.y + a.h > b.y

for a in claims.mitems:
  for b in claims.mitems:
    if a != b:
      let intersect = intersect(a, b)
      a.intersects = a.intersects or intersect
      b.intersects = b.intersects or intersect

for claim in claims:
  if not claim.intersects: echo claim
