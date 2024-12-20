from collections import Dict

fn main() raises:
    var f = open("1/1.txt", "r").read().splitlines()

    var d1 = Dict[Int, Int]()
    var d2 = Dict[Int, Int]()
    var sum = 0
    for line in f:
        var split = line[].split()
        var n1 = int(split[0])
        var n2 = int(split[1])
        if n1 in d1:
            d1[n1] += 1
        else:
            d1[n1] = 1
        if n2 in d2:
            d2[n2] += 1
        else:
            d2[n2] = 1
    
    for key in d1:
        if key[] in d2:
            sum += key[] * d2[key[]]

    print(sum)

        