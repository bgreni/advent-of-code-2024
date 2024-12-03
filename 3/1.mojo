

fn do_sum(inp: String) -> Int:
    var sum = 0
    var i = 0

    var enabled = True

    @parameter
    fn parse_int() raises -> Int:
        var start = i
        while isdigit(ord(inp[i])):
            i += 1
        return int(inp[start:i])

    while i < len(inp):
        if inp[i:i+4] == "do()":
            i += 4
            enabled = True
            continue
        
        if inp[i:i+7] == "don't()":
            i += 7
            enabled = False
            continue
            

        if inp[i:i+4] != "mul(":
            i += 1
            continue
        i += 4
        if not enabled:
            continue
        try:
            var n1 = parse_int()
            if inp[i] != ",":
                continue
            i += 1
            var n2 = parse_int()
            if inp[i] != ')':
                continue
            i += 1
            sum += n1 * n2
        except:
            pass
    return sum

fn main() raises:
    var inp = open("3/1.txt", "r").read()
    print(do_sum(inp))
    
