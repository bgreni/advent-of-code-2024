fn check_report(owned r: List[Int], remove: Int = -1) -> Int:
    if len(r) <= 1:
        return 1

    if remove != -1:
        _ = r.pop(remove)

    var ascending = r[0] < r[1]

    for i in range(0, len(r) - 1):
        if ascending:
            if not r[i] < r[i+1]:
                return 0
        else:
            if not r[i] > r[i+1]:
                return 0

        if abs(r[i+1] - r[i]) > 3:
            return 0
    return 1


fn main() raises:

    var f = open("2/1.txt", "r").read().splitlines()
    var safe = 0
    for line_str in f:
        var l = line_str[].split()
        var line = List[Int](capacity=len(l))
        for n in l:
            line.append(int(n[]))

        if check_report(line) == 0:
            # oof
            for i in range(len(line)):
                if check_report(line, i) == 1:
                    safe += 1
                    break
        else:
            safe += 1
    print(safe)