

fn main() raises:
    var f = open("1/1.txt", "r").read().splitlines()

    var l1 = List[Int]()
    var l2 = List[Int]()
    for line in f:
        var split = line[].split()
        # print(split.__str__())
        l1.append(int(split[0]))
        l2.append(int(split[1]))

    sort(l1)
    sort(l2)

    var sum = 0
    for i in range(len(l1)):
        sum += abs(l1[i] - l2[i])

    print(sum)