import strutils

proc getChanges(src: string): seq[int] =
    result = @[]
    for ln in src.lines:
        result.add(parseInt(ln))

var changes: seq[int] = getChanges("input.txt")

proc decode(changes: seq[int]): (int, int) =
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
            
    return (res, rep)

echo decode(changes)
 