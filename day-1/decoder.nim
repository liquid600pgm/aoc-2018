import strutils, sequtils

var changes: seq[int] = toSeq(lines("input.txt"))
    .map do (s: string) -> int: parseInt(s)

var
    res, rep: int
    freqs: seq[int] = @[]

while rep == 0:
    for ch in changes:
        res += ch
        if res in freqs:
            rep = res
            break
        freqs.add(res)

echo rep
