import strutils, sequtils

var changes: seq[int] = toSeq(lines("input.txt"))
    .map(proc(s: TaintedString): int = parseInt(s))

proc decode(changes: seq[int]): (int, int) =
    var
        res, rep: int
        freqs: seq[int] = @[]

    while rep == 0:
        for ch in changes:
            res += ch
            if res in freqs:
                rep = res
            freqs.add(res)
            
    return (res, rep)

echo decode(changes)
 